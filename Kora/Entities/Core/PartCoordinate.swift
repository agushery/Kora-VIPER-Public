//
//  PartCoordinate.swift
//  KoraDance
//
//  Created by Henrico Aldy Ferdian on 29/10/22.
//

import Foundation
import Vision


class PartCoordinate:Codable{
    var x: Double = 0
    var y: Double = 0
    
    init(){
        
    }
    
    init(x: Double, y: Double){
        self.x = x
        self.y = y
    }
    
    func fromCGPoint(point: CGPoint?){
        if point != nil{
            self.x = point!.x
            self.y = point!.y
        }
    }
    
    func toCGPoint()->CGPoint{
        return CGPoint(x: self.x, y: self.y)
    }
    
    func toVNPoint()->VNPoint{
        return VNPoint(x: self.x, y: self.y)
    }
}
