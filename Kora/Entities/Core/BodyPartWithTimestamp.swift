//
//  BodyParts.swift
//  SquatCounter
//
//  Created by Henrico Aldy Ferdian on 26/10/22.
//

import Foundation
import Vision

class BodyPartWithTimestamp:Codable{
    var time: Int
    var bodyParts: BodyParts
    
    init(){
        self.time = 0
        self.bodyParts = BodyParts()
    }
    
    init(time: Int, bodyParts: BodyParts){
        self.time = time
        self.bodyParts = bodyParts
    }
}
