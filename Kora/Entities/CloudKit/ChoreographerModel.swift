//
//  ChoreographerModel.swift
//  KoraDance
//
//  Created by Ardian Pramudya Alphita on 18/10/22.
//

import Foundation

/// ChoreographerModel is the model that will show the choreographer information
struct ChoreographerModel: Identifiable, Codable {
    /// id is a value from CKRecord.recordID.recordName
    var id: String
    /// choreographerName is a value that store the name of the choreographer
    var choreographerName: String
}

extension ChoreographerModel {
    /// Convert the ChoreographerModel so that the view can easily display the information that is needed
    func toChoreographer() -> Choreographer {
        return Choreographer(id: self.id, name: self.choreographerName)
    }
}
