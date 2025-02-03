import SwiftUI

enum AppColors {
    case black
    case sandy
    case white
    case gray
    
    var color: Color {
        switch self {
        case .black:
            Color("212121")
        case .sandy:
            Color("F3F277")
        case .white:
            Color("FFFFFF")
        case .gray:
            Color("E1E1E1")
        }
    }
}

