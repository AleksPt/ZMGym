import SwiftUI

struct CheckButton: View {
    let forSchedule: Bool
    let action: () -> ()
    
    init(forSchedule: Bool = false, action: @escaping () -> ()) {
        self.forSchedule = forSchedule
        self.action = action
    }
    
    var body: some View {
        Button {
            action()
        } label: {
            Capsule()
                .frame(height: 41)
                .foregroundStyle(forSchedule ? AppColors.black.color : AppColors.sandy.color)
                .overlay(
                    Text(AppLabels.Buttons.check)
                        .foregroundStyle(forSchedule ? AppColors.white.color : AppColors.black.color)
                        .font(.custom(AppFonts.poppinsSemiBold.name, size: 32))
                )
        }

    }
}

#Preview {
//    ZStack {
//        Color.black.ignoresSafeArea()
//        CheckButton() {}
//    }
    
    ZStack {
        AppColors.sandy.color.ignoresSafeArea()
        CheckButton(forSchedule: true) {}
    }
}
