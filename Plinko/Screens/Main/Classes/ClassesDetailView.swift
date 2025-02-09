import SwiftUI

struct ClassesDetailView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var classModel: ClassModel?
    @State private var selectedDay: Date = .now
    @State private var isBottomSheetPresented: Bool = false
    
    var body: some View {
        ZStack {
            BackgroundView()
            
            ZStack {
                if isSameDay(date: classModel?.date) {
                    ZStack(alignment: .top) {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundStyle(AppColors.darkGray.color)
                            .frame(height: 125)
                            .offset(y: 50)
                        
                        VStack {
                            DateVeiw(date: classModel?.date ?? Date())
                                .padding(.bottom, 5)
                            Text((classModel?.classType.rawValue.uppercased() ?? "") + " " + AppLabels.Screens.Classes.Schedule.timePractice.uppercased())
                                .font(.custom(AppFonts.poppinsRegular.name, size: 20))
                            Spacer()
                        }
                    }
                }
                
                VStack {
                    Spacer()
                    
                    DatePicker(
                        selection: $selectedDay,
                        displayedComponents: .date) { }
                        .datePickerStyle(.graphical)
                        .accentColor(AppColors.sandy.color)
                        .preferredColorScheme(.dark)
                    
                    Spacer()
                }
                
                VStack {
                    Spacer()
                    if !isSameDay(date: classModel?.date) {
                        NavButton(title: AppLabels.Buttons.reserve) {
                            isBottomSheetPresented = true
                        }
                    }
                }
                .sheet(isPresented: $isBottomSheetPresented, content: {
                    ReserveClassView(selectedDate: $selectedDay, classModel: $classModel)
                })
            }
            .padding(.horizontal)
            .padding(.bottom, 30)
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    dismiss()
                }) {
                    HStack {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.white)
                        Text("Back")
                            .foregroundColor(.white)
                    }
                }
            }
        }
    }
    
    private func isSameDay(date: Date?) -> Bool {
        guard let date else { return false }
        let calendar = Calendar.current
        let selectedComponents = calendar.dateComponents([.year, .month, .day], from: selectedDay)
        let dateComponents = calendar.dateComponents([.year, .month, .day], from: date)
        return selectedComponents.year == dateComponents.year &&
        selectedComponents.month == dateComponents.month &&
        selectedComponents.day == dateComponents.day
    }
}

#Preview {
    ClassesDetailView(classModel: .constant(ClassModel(classType: .yoga, date: Date())))
}
