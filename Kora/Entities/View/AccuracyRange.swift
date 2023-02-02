//
//  AccuracyRangeD.swift
//  KoraDance
//
//  Created by Henrico Aldy Ferdian on 18/11/22.
//

import Foundation
import SwiftUI

class AccuracyRange{
    var topRange: AccuracyRangeColor
    var midRange: AccuracyRangeColor
    var lowRange: AccuracyRangeColor
    
    init(topRange: AccuracyRangeColor, midRange: AccuracyRangeColor, lowRange: AccuracyRangeColor){
        self.topRange = topRange
        self.midRange = midRange
        self.lowRange = lowRange
    }
}

class AccuracyRangeColor{
    var accuracyRange: AccuracyRangeValue
    var accuracyColor: Color
    var secondColor: Color
    
    init(accuracyRange: AccuracyRangeValue){
        self.accuracyRange = accuracyRange
        self.accuracyColor = Color.red
        self.secondColor = Color.red
    }
    
    init(accuracyRange: AccuracyRangeValue, color: Color, secondColor: Color){
        self.accuracyRange = accuracyRange
        self.accuracyColor = color
        self.secondColor = secondColor
    }
    
    init(max: Int, min: Int){
        self.accuracyRange = AccuracyRangeValue(max: max, min: min)
        self.accuracyColor = Color.red
        self.secondColor = Color.red
    }
    
    init(max: Int, min: Int, color: Color, secondColor: Color){
        self.accuracyRange = AccuracyRangeValue(max: max, min: min)
        self.accuracyColor = color
        self.secondColor = secondColor
    }
}

class AccuracyRangeValue{
    var max: Int
    var min: Int
    
    init(max: Int, min: Int){
        self.max = max
        self.min = min
    }
}
