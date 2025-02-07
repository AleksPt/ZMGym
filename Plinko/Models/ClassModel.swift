import Foundation

enum ClassType: String {
    case yoga, gym
}

struct ClassModel {
    let classType: ClassType
    var date: Date
}
