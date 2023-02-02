//
//  ChoreoModel.swift
//  KoraDance
//
//  Created by Ardian Pramudya Alphita on 18/10/22.
//

import Foundation

/// ChoreoModel is the main model that will show the main information about the choreo
struct ChoreoModel: Codable, Identifiable {
    /// id is a value from CKRecord.recordID.recordName
    var id: String
    /// title is a value that store the title of the choreo
    var title: String
    /// description is a value that store the description of the choreo
    var description: String
    /// thumbnail is a value that store thumbnail image link URL
    var thumbnail: String
    /// preview is a value that store preview video link URL
    var preview: String
    /// duration is value that store the duration of the choreo video
    var duration: Int
    /// choreographer is a value that store the choreographer id
    var choreographer: String
    /// music is value that store the music id
    var music: String
    /// difficulty is a value that store the choreo difficulty
    /// you can convert ChoreoModel to Choreo to use the Difficulty enum
    var difficulty: Int
    /// isAvailable is a value that store is the content already available to the user or not
    var isAvailable: Int
    /// order is value that use to sort data
    var order: Int
}

extension ChoreoModel {
    /// Convert the ChoreoModel so that the view can easily display the information that is needed
    func toChoreo() -> Choreo {
        /// Convert difficulty from Int to Difficulty enum so can be easily use by the view
        var difficulty: Difficulty = .beginner
        switch self.difficulty {
        case 1:
            difficulty = .beginner
        case 2:
            difficulty = .intermediate
        default:
            difficulty = .advance
        }
        
        /// Convert isAvailable from Int to Bool so can be easily use by the view
        var isAvailable: Bool = false
        if self.isAvailable == 1 {
            isAvailable = true
        } else {
            isAvailable = false
        }
        
        return Choreo(
            id: self.id,
            title: self.title,
            description: self.description,
            thumbnail: self.thumbnail,
            preview: self.preview,
            duration: self.duration,
            choreographer: self.choreographer,
            music: self.music,
            difficulty: difficulty,
            isAvailable: isAvailable,
            order: order
        )
    }
}
