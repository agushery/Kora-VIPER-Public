//
//  ChoreoDetail.swift
//  KoraDance
//
//  Created by Ardian Pramudya Alphita on 18/10/22.
//

import Foundation

/// Choreographer is a model that should be use by the view to display the information
struct ChoreoDetail: Identifiable, Equatable, Hashable, Codable {
    /// id is a value from CKRecord.recordID.recordName
    var id: String
    /// choreo is a value that store the choreo id
    var choreo: String
    /// title is a value that store the choreo video part title
    var title: String
    /// isPlayAvailable is a value to tell the view that this is content can be selected and play by the user
    var isPlayAvailable: Bool
    /// content is a value that store the video link URL
    var content: String
    /// thumbnail is a value that store the thumbnail image link URL
    var thumbnail: String
    /// duration is a value that store the video part duration
    var duration: Int
    /// order is value to store the order of content
    var order: Int
    /// use to toggle play or pause icon
    var isSelected: Bool = false
    /// The body pose data
    var bodyPose: String
    /// The body pose configuration threshold
    var bodyPoseAngleThreshold: String
    /// The body pose time offset when video played
    var timeOffset: Int64
}
