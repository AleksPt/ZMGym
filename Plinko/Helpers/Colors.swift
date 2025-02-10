import SwiftUI

enum AppColors {
    case black
    case sandy
    case white
    case lightGray
    case darkGray
    case softPink
    case purple
    
    var color: Color {
        switch self {
        case .black:
            Color("212121")
        case .sandy:
            Color("F3F277")
        case .white:
            Color("FFFFFF")
        case .lightGray:
            Color("E1E1E1")
        case .darkGray:
            Color("2A292A")
        case .softPink:
            Color("E2CCFF")
        case .purple:
            Color("9747FF")
        }
    }
}

