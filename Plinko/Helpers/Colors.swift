//
//  Colors.swift
//  Plinko
//
//  Created by Алексей on 03.02.2025.
//

import SwiftUI

enum AppColors {
    case black
    case sandy
    case white
    case gray
    
    var color: Color {
        switch self {
        case .black:
            Color(._212121)
        case .sandy:
            Color(.F_3_F_277)
        case .white:
            Color(.FFFFFF)
        case .gray:
            Color(.E_1_E_1_E_1)
        }
    }
}

