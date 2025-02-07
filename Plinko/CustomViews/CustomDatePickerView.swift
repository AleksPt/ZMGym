import SwiftUI

struct CustomDatePickerView: View {
    @State private var currentDate = Date()
    @State private var currentMonth: Int = 0
    @Binding var selectedDays: [Int]
    
    var body: some View {
        VStack(spacing: 20) {
            
            let days = ["M", "T", "W", "T", "F", "S", "S"]
            
            HStack {
                Button {
                    currentMonth -= 1
                } label: {
                    Image(systemName: "arrowtriangle.backward.fill")
                        .foregroundStyle(.white)
                }
                .padding(.trailing)
                
                Group {
                    Text(extraDate()[0].uppercased())
                    Text(extraDate()[1])
                }
                .font(.custom(AppFonts.poppinsRegular.name, size: 20))
                .foregroundStyle(.white)
                
                Button {
                    currentMonth += 1
                } label: {
                    Image(systemName: "arrowtriangle.forward.fill")
                        .foregroundStyle(.white)
                }
                .padding(.leading)
                
                Spacer()
            }
            .padding(.horizontal)
            
            HStack {
                ForEach(days, id: \.self) { day in
                    Text(day.uppercased())
                        .font(.custom(AppFonts.poppinsRegular.name, size: 20))
                        .foregroundStyle(AppColors.lightGray.color)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 5)
                }
            }
            .background(AppColors.black.color)
            .clipShape(Capsule())
            
            let columns = Array(repeating: GridItem(.flexible()), count: 7)
            
            LazyVGrid(columns: columns) {
                ForEach(extractDate()) { value in
                    Button {
                        selectedDays.append(value.day)
                    } label: {
                        CardView(value: value, selectedDays: selectedDays)
                    }
                }
            }
        }
        .onChange(of: currentMonth) { newValue in
            currentDate = getCurrentMonth()
        }
    }
    
    @ViewBuilder
    private func CardView(
        value: DateValueModel,
        selectedDays: [Int]
    ) -> some View {
        VStack {
            if value.day != -1 {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(selectedDays.contains(value.day) ? AppColors.sandy.color : .clear)
                    Text(value.day.description)
                        .foregroundStyle(selectedDays.contains(value.day) ? .black : .white)
                }
            } else {
                Text("")
            }
        }
        .frame(width: 50, height: 50)
        .font(.custom(AppFonts.poppinsRegular.name, size: 20))
    }
    
    private func extraDate() -> [String] {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM YYYY"
        
        let date = formatter.string(from: currentDate)
        
        return date.components(separatedBy: " ")
    }
    
    private func getCurrentMonth() -> Date {
        let calendar = Calendar.current
        
        guard let currentMonth = calendar.date(byAdding: .month, value: currentMonth, to: Date()) else {
            return Date()
        }
        
        return currentMonth
    }
    
    private func extractDate() -> [DateValueModel] {
        let calendar = Calendar.current
        
        let currentMonth = getCurrentMonth()
        let startOfMonth = calendar.date(from: Calendar.current.dateComponents([.year, .month], from: currentMonth))!
        
        let firstWeekday = calendar.component(.weekday, from: startOfMonth)
        
        let range = calendar.range(of: .day, in: .month, for: startOfMonth)!
        let numberOfDays = range.count
        
        var days: [DateValueModel] = []
        
        for _ in 0..<(firstWeekday == 1 ? 6 : firstWeekday - 2) {
            days.append(DateValueModel(day: -1, date: Date()))
        }
        
        for day in 1...numberOfDays {
            if let date = calendar.date(byAdding: .day, value: day - 1, to: startOfMonth) {
                days.append(DateValueModel(day: day, date: date))
            }
        }
        
        let totalCells = 42
        if days.count < totalCells {
            let remaining = totalCells - days.count
            for _ in 0..<remaining {
                days.append(DateValueModel(day: -1, date: Date()))
            }
        }
        
        return days
    }
}

#Preview {
    ZStack {
        BackgroundView()
        
        CustomDatePickerView(selectedDays: .constant([7]))
    }
}

extension Date {
    func getAllDates() -> [Date] {
        let calendar = Calendar.current
        
        let startDate = calendar.date(from: Calendar.current.dateComponents([.year, .month], from: self))!
        
        let range = calendar.range(of: .day, in: .month, for: startDate)!
        
        return range.compactMap { day -> Date in
            return calendar.date(byAdding: .day, value: day - 1, to: startDate)!
        }
    }
}
