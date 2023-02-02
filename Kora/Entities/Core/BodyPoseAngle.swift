//
//  BodyPoseAngle.swift
//  KoraDance
//
//  Created by Henrico Aldy Ferdian on 30/10/22.
//

import Foundation

class BodyPoseAngle: Codable {
    // Right body parts
    // Top
    var rightElbow: Double = 0
    var rightShoulder: Double = 0
    var rightNeck: Double = 0
    // Bottom
    var rightHip: Double = 0
    var rightKnee: Double = 0
    
    // Center
    var leftRoot: Double = 0
    var rightRoot: Double = 0
    
    // Left body parts
    // Top
    var leftShoulder: Double = 0
    var leftElbow: Double = 0
    var leftNeck: Double = 0
    // Bottom
    var leftHip: Double = 0
    var leftKnee: Double = 0
    
    init(){}
    
    init(defaultValue: Double = 0){
        self.rightElbow = defaultValue
        self.rightShoulder = defaultValue
        self.rightHip = defaultValue
        self.rightKnee = defaultValue
        self.rightNeck = defaultValue
        self.rightRoot = defaultValue
        self.leftRoot = defaultValue
        self.leftNeck = defaultValue
        self.leftShoulder = defaultValue
        self.leftElbow = defaultValue
        self.leftHip = defaultValue
        self.leftKnee = defaultValue
    }
    
    func toString()->String{
        return "rightElbow:"+String(self.rightElbow)+"\n"
            + "rightShoulder:"+String(self.rightShoulder)+"\n"
            + "rightHip:"+String(self.rightHip)+"\n"
            + "rightKnee:"+String(self.rightKnee)+"\n"
            + "rightNeck:"+String(self.rightNeck)+"\n"
            + "rightRoot:"+String(self.rightRoot)+"\n"
            + "leftRoot:"+String(self.leftRoot)+"\n"
            + "leftNeck:"+String(self.leftNeck)+"\n"
            + "leftShoulder:"+String(self.leftShoulder)+"\n"
            + "leftElbow:"+String(self.leftElbow)+"\n"
            + "leftHip:"+String(self.leftHip)+"\n"
            + "leftKnee:"+String(self.leftKnee)+"\n"
    }
    
    func getSum()->Double{
        return self.rightElbow + self.rightShoulder + self.rightHip + self.rightKnee + self.rightNeck + self.rightRoot + self.leftRoot + self.leftNeck + self.leftShoulder + self.leftElbow + self.leftHip + self.leftKnee
    }
}
