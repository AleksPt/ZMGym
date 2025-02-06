import SwiftUI

struct ClassesDetailView: View {
    @State private var selectionDate = Date()
    var body: some View {
        ZStack {
            BackgroundView()
            
            DatePicker("", selection: $selectionDate, displayedComponents: .date)
                .datePickerStyle(.graphical)
                .preferredColorScheme(.dark)
                .accentColor(AppColors.sandy.color)
        }
    }
}

#Preview {
    ClassesDetailView()
}
