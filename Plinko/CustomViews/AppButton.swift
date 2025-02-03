//
//  AppButton.swift
//  Plinko
//
//  Created by Алексей on 03.02.2025.
//

import SwiftUI

struct AppButton: View {
    let title: String
    let action: () -> ()
    var body: some View {
        Button {
            action()
        } label: {
            Capsule()
                .overlay(
                    Text(title)
                        .font(.custom(AppFonts.poppinsBlack.name, size: 40))
                        .foregroundStyle(.white)
                )
        }

    }
}

#Preview {
    AppButton(title: AppLabels.Buttons.next) {}
}
