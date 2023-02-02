//
//  History.swift
//  KoraDance
//
//  Created by Ardian Pramudya Alphita on 15/11/22.
//

import Foundation
import CloudKit

struct History: Hashable, Identifiable {
    var id: CKRecord.ID?
    var userId: String
    var choreoDetailId: Choreo
    var recordUrl: String
    var thumbnailUrl: String
    var isDownloaded: Int
    var createdDate: Date?
    var expiredDate: Int
    var progressValue: Double
    var device: String
}

extension History {
    func toHistoryModel() -> HistoryModel {
        return HistoryModel(
            id: self.id!,
            userId: self.userId,
            choreoDetailId: self.choreoDetailId.id,
            recordUrl: self.recordUrl,
            thumbnailUrl: self.thumbnailUrl,
            isDownloaded: self.isDownloaded,
            createDate: Date(),
            expiredDate: self.expiredDate,
            progressValue: self.progressValue,
            device: self.device
        )
    }
}
