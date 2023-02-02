//
//  Constants.swift
//  Kora
//
//  Created by Agus Hery on 30/12/22.
//

import Foundation

struct K {
    
    struct ChoreoList {
        static let navTitle: String = "Choreography"
    }
    
    struct Difficulty {
        static let beginner: String = "Beginner"
        static let intermediate: String = "Intermediate"
        static let advance: String = "Advance"
    }
    
    struct Color {
        static let bgColor: String = "Background"
        static let navTint: String = "NavigationTint"
        struct ChoreoDetail {
            static let lightGrey: String = "LightGrey"
        }
        struct CollectionCell {
            static let aLayer: String = "AvailableLayer"
            static let nLayer: String = "NotAvailableLayer"
        }
    }
    
    struct Image {
        static let setting: String = "gear"
        static let lock: String = "lock.fill"
    }
}
