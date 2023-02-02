//
//  BodyParts.swift
//  SquatCounter
//
//  Created by Henrico Aldy Ferdian on 26/10/22.
//

import Foundation
import Vision

class BodyParts:Codable{
    var rightWrist: PartCoordinate = PartCoordinate()
    var rightElbow: PartCoordinate = PartCoordinate()
    var rightShoulder: PartCoordinate = PartCoordinate()
    
    var neck: PartCoordinate = PartCoordinate()
    var nose: PartCoordinate = PartCoordinate()
    var leftEye: PartCoordinate = PartCoordinate()
    var leftEar: PartCoordinate = PartCoordinate()
    var rightEye: PartCoordinate = PartCoordinate()
    var rightEar: PartCoordinate = PartCoordinate()
    
    var leftShoulder: PartCoordinate = PartCoordinate()
    var leftElbow: PartCoordinate = PartCoordinate()
    var leftWrist: PartCoordinate = PartCoordinate()
    
    var rightHip: PartCoordinate = PartCoordinate()
    var leftHip: PartCoordinate = PartCoordinate()
    var root: PartCoordinate = PartCoordinate()
    
    var rightKnee: PartCoordinate = PartCoordinate()
    var rightAnkle: PartCoordinate = PartCoordinate()
    var leftKnee: PartCoordinate = PartCoordinate()
    var leftAnkle: PartCoordinate = PartCoordinate()
    
    init(){}
    
    init(bodyParts: [VNHumanBodyPoseObservation.JointName : VNRecognizedPoint]){
        self.fromBodyObservation(bodyParts: bodyParts)
    }
    
    init(bodyPartsPoint: [VNHumanBodyPoseObservation.JointName : VNPoint]){
        self.fromBodyObservation(bodyParts: bodyPartsPoint)
    }
    
    func fromBodyObservation(bodyParts: [VNHumanBodyPoseObservation.JointName : VNPoint]){
        self.rightWrist.fromCGPoint(point: bodyParts[.rightWrist]?.location)
        self.rightElbow.fromCGPoint(point: bodyParts[.rightElbow]?.location)
        self.rightShoulder.fromCGPoint(point: bodyParts[.rightShoulder]?.location)
        
        self.neck.fromCGPoint(point: bodyParts[.neck]?.location)
        self.nose.fromCGPoint(point: bodyParts[.nose]?.location)
        
        self.leftEye.fromCGPoint(point: bodyParts[.leftEye]?.location)
        self.leftEar.fromCGPoint(point: bodyParts[.leftEar]?.location)
        self.rightEye.fromCGPoint(point: bodyParts[.rightEye]?.location)
        self.rightEar.fromCGPoint(point: bodyParts[.rightEar]?.location)
        
        self.leftShoulder.fromCGPoint(point: bodyParts[.leftShoulder]?.location)
        self.leftElbow.fromCGPoint(point: bodyParts[.leftElbow]?.location)
        self.leftWrist.fromCGPoint(point: bodyParts[.leftWrist]?.location)
        
        self.rightHip.fromCGPoint(point: bodyParts[.rightHip]?.location)
        self.leftHip.fromCGPoint(point: bodyParts[.leftHip]?.location)
        self.root.fromCGPoint(point: bodyParts[.root]?.location)
        
        self.rightKnee.fromCGPoint(point: bodyParts[.rightKnee]?.location)
        self.rightAnkle.fromCGPoint(point: bodyParts[.rightAnkle]?.location)
        self.leftKnee.fromCGPoint(point: bodyParts[.leftKnee]?.location)
        self.leftAnkle.fromCGPoint(point: bodyParts[.leftAnkle]?.location)
    }
    
    func toBodyParts()->[VNHumanBodyPoseObservation.JointName : VNPoint]{
        var bodyParts = [VNHumanBodyPoseObservation.JointName : VNPoint]()
        
        bodyParts[.rightWrist] = VNPoint(x: self.rightWrist.x, y: self.rightWrist.y)
        bodyParts[.rightElbow] = VNPoint(x: self.rightElbow.x, y: self.rightElbow.y)
        bodyParts[.rightShoulder] = VNPoint(x: self.rightShoulder.x, y: self.rightShoulder.y)
        
        bodyParts[.neck] = VNPoint(x: self.neck.x, y: self.neck.y)
        bodyParts[.nose] = VNPoint(x: self.nose.x, y: self.nose.y)
        
        bodyParts[.leftEye] = VNPoint(x: self.leftEye.x, y: self.leftEye.y)
        bodyParts[.leftEar] = VNPoint(x: self.leftEar.x, y: self.leftEar.y)
        bodyParts[.rightEye] = VNPoint(x: self.rightEye.x, y: self.rightEye.y)
        bodyParts[.rightEar] = VNPoint(x: self.rightEar.x, y: self.rightEar.y)
        
        bodyParts[.leftShoulder] = VNPoint(x: self.leftShoulder.x, y: self.leftShoulder.y)
        bodyParts[.leftElbow] = VNPoint(x: self.leftElbow.x, y: self.leftElbow.y)
        bodyParts[.leftWrist] = VNPoint(x: self.leftWrist.x, y: self.leftWrist.y)
        
        bodyParts[.rightHip] = VNPoint(x: self.rightHip.x, y: self.rightHip.y)
        bodyParts[.leftHip] = VNPoint(x: self.leftHip.x, y: self.leftHip.y)
        bodyParts[.root] = VNPoint(x: self.root.x, y: self.root.y)
        
        bodyParts[.rightKnee] = VNPoint(x: self.rightKnee.x, y: self.rightKnee.y)
        bodyParts[.rightAnkle] = VNPoint(x: self.rightAnkle.x, y: self.rightAnkle.y)
        bodyParts[.leftKnee] = VNPoint(x: self.leftKnee.x, y: self.leftKnee.y)
        bodyParts[.leftAnkle] = VNPoint(x: self.leftAnkle.x, y: self.leftAnkle.y)
        
        return bodyParts
    }
}
