//
//  Music.swift
//  KoraDance
//
//  Created by Ardian Pramudya Alphita on 18/10/22.
//

import Foundation

/// Music is a model that should be use by the view to display the information
struct Music: Identifiable {
    /// id is a value from CKRecord.recordID.recordName
    var id: String
    /// title is a value that store the title of the song that is use in the choreo
    var title: String
    /// artist is a value that store the artist name that own the song
    var artist: String
}
