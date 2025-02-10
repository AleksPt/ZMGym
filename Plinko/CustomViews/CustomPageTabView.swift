import SwiftUI

struct CustomPageTabView: View {
    @Binding var selection: Int
    let numberOfTabs: Int

    var body: some View {
            HStack {
                ForEach(0..<numberOfTabs, id: \.self) { index in
                    RoundedRectangle(cornerRadius: 2)
                        .fill(AppColors.sandy.color)
                        .opacity(index == selection ? 1 : 0.1)
                        .frame(width: 18, height: 18)
                }
            }
            .animation(.default, value: selection)
            .padding(.top, 10)
    }
}
