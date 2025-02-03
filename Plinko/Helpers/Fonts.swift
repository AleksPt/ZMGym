//
//  Fonts.swift
//  Plinko
//
//  Created by Алексей on 03.02.2025.
//

import Foundation

enum AppFonts {
    case poppinsBlack
    case poppinsLight
    case poppinsRegular
    case poppinsSemiBold
    
    var name: String {
        switch self {
        case .poppinsBlack:
            return "Poppins-Black"
        case .poppinsLight:
            return "Poppins-Light"
        case .poppinsRegular:
            return "Poppins-Regular"
        case .poppinsSemiBold:
            return "Poppins-SemiBold"
        }
    }
}
