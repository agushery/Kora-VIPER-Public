//
//  MusicModel.swift
//  KoraDance
//
//  Created by Ardian Pramudya Alphita on 18/10/22.
//

import Foundation

/// MusicModel is the model that will show the information about the music that is use in the video
struct MusicModel: Identifiable, Codable {
    /// id is a value from CKRecord.recordID.recordName
    var id: String
    /// title is a value that store the title of the song that is use in the choreo
    var title: String
    /// artist is a value that store the artist name that own the song
    var artist: String
}

extension MusicModel {
    /// Convert the MusicModel so that the view can easily display the information that is needed
    func toMusic() -> Music {
        return Music(id: self.id, title: self.title, artist: self.artist)
    }
}
