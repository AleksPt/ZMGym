//
//  PickView.swift
//  Plinko
//
//  Created by Алексей on 04.02.2025.
//

import SwiftUI

struct PickView: View {
    let pickType: PickType
    let action: () -> ()
    var body: some View {
        Button {
            action()
        } label: {
            pickType.image
                .scaledToFit()
        }
    }
}

#Preview {
    PickView(pickType: .yoga) {}
}

extension PickView {
    enum PickType {
        case yoga, schedule, gym
        
        var image: Image {
            switch self {
            case .yoga:
                AppImages.yoga
            case .schedule:
                AppImages.schedule
            case .gym:
                AppImages.gym
            }
        }
    }
}
