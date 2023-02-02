//
//  ChoreoPose.swift
//  KoraDance
//
//  Created by Ardian Pramudya Alphita on 07/11/22.
//

import Foundation

/// ChoreoPose is the model that will save the poseData from the choreo
struct ChoreoPose: Identifiable, Codable {
    /// id is a value from CKRecord.recordID.recordName
    var id: String
    /// choreoDetail is id from the related choreo that use the pose
    var choreoDetail: String
    /// poseData is the captured frame from the choreo
    var poseData: String
}
