import SwiftUI

struct ScreenHeaderView: View {
    let title: String
    let subtitle: String
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(title.uppercased())
                    .font(.custom(AppFonts.poppinsSemiBold.name, size: 35))
                Text(subtitle.uppercased())
                    .font(.custom(AppFonts.poppinsRegular.name, size: 20))
            }
            .foregroundStyle(AppColors.lightGray.color)
            .lineLimit(1)
            .minimumScaleFactor(0.5)
            
            Spacer()
        }
    }
}
