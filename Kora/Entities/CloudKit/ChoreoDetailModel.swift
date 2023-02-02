//
//  ChoreoDetailModel.swift
//  KoraDance
//
//  Created by Ardian Pramudya Alphita on 18/10/22.
//

import Foundation

/// ChoreoDetailModel is the model that will show the information mostly about the video and data pose
struct ChoreoDetailModel: Codable, Identifiable {
    /// id is a value from CKRecord.recordID.recordName
    var id: String
    /// choreo is a value that store the choreo id
    var choreo: String
    /// title is a value that store the choreo video part title
    var title: String
    /// isPlayAvailable is a value to tell the view that this is content can be selected and play by the user
    var isPlayAvailable: Int
    /// content is a value that store the video link URL
    var content: String
    /// thumbnail is a value that store the thumbnail image link URL
    var thumbnail: String
    /// duration is a value that store the video part duration
    var duration: Int
    // order is value to store the order of content
    var order: Int
    /// The body pose data
    var bodyPose: String
    /// The body pose configuration threshold
    var bodyPoseAngleThreshold: String
    /// The body pose time offset when video played
    var timeOffset: Int64
}

extension ChoreoDetailModel {
    /// Convert the ChoreoDetailModel so that the view can easily display the information that is needed
    func toChoreoDetail() -> ChoreoDetail {
        /// convert isPlayAvailable from Int to Bool so that it can be easily use by the view
        var isPlayAvailable: Bool = false
        if self.isPlayAvailable == 1 {
            isPlayAvailable = true
        } else {
            isPlayAvailable = false
        }
        
        return ChoreoDetail(
            id: self.id,
            choreo: self.choreo,
            title: self.title,
            isPlayAvailable: isPlayAvailable,
            content: self.content,
            thumbnail: self.thumbnail,
            duration: self.duration,
            order: self.order,
            bodyPose: self.bodyPose,
            bodyPoseAngleThreshold: self.bodyPoseAngleThreshold,
            timeOffset: self.timeOffset
        )
    }
}
