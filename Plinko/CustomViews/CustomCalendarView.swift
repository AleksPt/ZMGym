import SwiftUI

struct DateValueModel: Identifiable {
    let id = UUID()
    let day: Int
    let date: Date
}

struct CustomDatePickerView: View {
    @Binding var currentDate: Date
    @State var currentMonth: Int = 0
    
    var body: some View {
        VStack(spacing: 35) {
            
            let days = ["M", "T", "W", "T", "F", "S", "S"]
            
            HStack {
                Button {
                    currentMonth -= 1
                } label: {
                    Image(systemName: "chevron.left")
                }
                
                Text(extraDate()[0])
                Text(extraDate()[1])
                
                Button {
                    currentMonth += 1
                } label: {
                    Image(systemName: "chevron.right")
                }
                
                Spacer()
            }
            .padding(.horizontal)
            
            HStack {
                ForEach(days, id: \.self) { day in
                    Text(day.uppercased())
                        .font(.custom(AppFonts.poppinsRegular.name, size: 17.5))
                        .foregroundStyle(AppColors.lightGray.color)
                        .padding(.vertical, 10)
                        .frame(maxWidth: .infinity)
                }
            }
            .background(AppColors.black.color)
            .clipShape(Capsule())
            
            let columns = Array(repeating: GridItem(.flexible()), count: 7)
            
            LazyVGrid(columns: columns, spacing: 15) {
                ForEach(extractDate()) { value in
                    CardView(value: value)
                }
            }
        }
        .onChange(of: currentMonth) { newValue in
            currentDate = getCurrentMonth()
        }
    }
    
    @ViewBuilder
    private func CardView(value: DateValueModel) -> some View {
        if value.day != -1 {
            Text(value.day.description)
        } else {
            Text("")
        }
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

struct CustomCalendarView: View {
    @State var currentDate = Date()
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 20) {
                CustomDatePickerView(currentDate: $currentDate)
            }
        }
    }
}

#Preview {
    CustomCalendarView()
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
