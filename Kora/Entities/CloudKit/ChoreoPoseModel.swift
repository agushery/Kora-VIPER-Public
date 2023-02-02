//
//  ChoreoPoseModel.swift
//  KoraDance
//
//  Created by Ardian Pramudya Alphita on 07/11/22.
//

import Foundation

/// ChoreoPoseModel is the model that will save the poseData from the choreo
struct ChoreoPoseModel: Codable, Identifiable {
    /// id is a value from CKRecord.recordID.recordName
    var id: String
    /// choreoDetail is id from the related choreo that use the pose
    var choreoDetail: String
    /// poseData is the captured frame from the choreo
    var poseData: String
}
