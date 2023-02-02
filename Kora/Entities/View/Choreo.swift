//
//  Choreo.swift
//  KoraDance
//
//  Created by Ardian Pramudya Alphita on 18/10/22.
//

import Foundation

/// Choreo is a model that should be use by the view to display the information
/// you can add any helper method using extension if needed
struct Choreo: Identifiable, Equatable, Hashable, Codable {
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
    /// you can convert the Int to TimeInterval if needed
    var duration: Int
    /// choreographer is a value that store the choreographer id
    var choreographer: String
    /// music is value that store the music id
    var music: String
    /// difficulty is a value that store the choreo difficulty
    var difficulty: Difficulty
    /// isAvailable is a value that store is the content already available to the user or not
    var isAvailable: Bool
    /// order is value that use to sort data
    var order: Int
}
