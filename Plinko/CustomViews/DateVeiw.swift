import SwiftUI

struct DateVeiw: View {
    let date: Date
    
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .frame(width: 150, height: 90)
            .foregroundStyle(AppColors.sandy.color)
            .overlay(
                AppImages.pattern
                    .resizable()
                    .scaledToFill()
                    .blendMode(.overlay)
                    .rotationEffect(.degrees(5))
                    .scaleEffect(1.5)
                    .offset(x: 30, y: -30)
            )
            .overlay(
                HStack {
                    Text(getDayString())
                        .font(.custom(AppFonts.poppinsBlack.name, size: 45))
                        .foregroundStyle(AppColors.black.color)
                    
                    VStack(alignment: .leading, spacing: -10) {
                        Text(getMonthString())
                            .font(.custom(AppFonts.poppinsSemiBold.name, size: 30))
                        Text(getYearString())
                            .font(.custom(AppFonts.poppinsRegular.name, size: 17))
                    }
                    .foregroundStyle(AppColors.black.color)
                }
            )
            .clipped()
    }
    
    private func getDayString() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd"
        return formatter.string(from: date)
    }
    
    private func getMonthString() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM"
        return formatter.string(from: date).uppercased()
    }
    
    private func getYearString() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy"
        return formatter.string(from: date)
    }
}

#Preview {
    ZStack {
        AppColors.darkGray.color.ignoresSafeArea()
        DateVeiw(date: Date())
    }
}
