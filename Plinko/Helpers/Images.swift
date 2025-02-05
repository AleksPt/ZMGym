import SwiftUI

enum AppImages {
    static let background = Image(.background).resizable()
    static let qr = Image(.qr).resizable()
    static let pattern = Image(.pattern).resizable()
    static let patternYellow = Image(.patternYellow).resizable()
    static let yoga = Image(.yoga).resizable()
    static let schedule = Image(.schedule).resizable()
    static let gym = Image(.gym).resizable()
    
    enum Tab {
        static let home = Image(.homeTabActive)
        static let classes = Image(.classesTabActive)
        static let sportbar = Image(.sportbarTabActive)
        static let profile = Image(.profileTabActive)
    }
    
    enum Onboarding {
        static let img1 = Image(.onboarding1).resizable()
        static let img2 = Image(.onboarding2).resizable()
        static let img3 = Image(.onboarding3).resizable()
        static let img4 = Image(.onboarding4).resizable()
    }
    
    enum Food {
        static let creatine = Image(.creatine).resizable()
        static let proteinBars = Image(.proteinBars).resizable()
        static let wheyProtein = Image(.wheyProtein).resizable()
        
        static let creatineGrid = Image(.creatineGrid).resizable()
        static let proteinBarsGrid = Image(.proteinBarsGrid).resizable()
        static let wheyProteinGrid = Image(.wheyProteinGrid).resizable()
    }
    
    enum Equipment {
        static let blueGymBall = Image(.blueGymBall).resizable()
        static let elasticBand = Image(.elasticBand).resizable()
        static let gymMat = Image(.gymMat).resizable()
        static let kettlebel = Image(.kettlebel).resizable()
        static let redGymBall = Image(.redGymBall).resizable()
        static let yellowGymBall = Image(.yellowGymBall).resizable()
        
        static let blueGymBallGrid = Image(.blueGymBallGrid).resizable()
        static let elasticBandGrid = Image(.elasticBandGrid).resizable()
        static let gymMatGrid = Image(.gymMatGrid).resizable()
        static let kettlebelGrid = Image(.kettlebelGrid).resizable()
        static let redGymBallGrid = Image(.redGymBallGrid).resizable()
        static let yellowGymBallGrid = Image(.yellowGymBallGrid).resizable()
    }
    
    enum Offer {
        static let offer1 = Image(.offer1).resizable()
        static let offer2 = Image(.offer2).resizable()
        static let offer3 = Image(.offer3).resizable()
        static let offer4 = Image(.offer4).resizable()
        
        enum Detail {
            enum Offer1 {
                static let cover = Image(.offer1DetailCover).resizable()
                static let footer = Image(.offer1DetailFooter).resizable()
            }
            enum Offer2 {
                static let cover = Image(.offer2DetailCover).resizable()
                static let footer1 = Image(.offer2DetailFooter1).resizable()
                static let footer2 = Image(.offer2DetailFooter2).resizable()
                static let footer3 = Image(.offer2DetailFooter3).resizable()
            }
            enum Offer3 {
                static let cover = Image(.offer3DetailCover).resizable()
                static let footer1 = Image(.offer3DetailFooter1).resizable()
                static let footer2 = Image(.offer3DetailFooter2).resizable()
                static let footer3 = Image(.offer3DetailFooter3).resizable()
            }
            enum Offer4 {
                static let cover = Image(.offer4DetailCover).resizable()
                static let footer1 = Image(.offer4DetailFooter1).resizable()
                static let footer2 = Image(.offer4DetailFooter2).resizable()
                static let footer3 = Image(.offer4DetailFooter3).resizable()
            }
        }
    }
}

