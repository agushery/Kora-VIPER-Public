//
//  HistoryModel.swift
//  KoraDance
//
//  Created by Ardian Pramudya Alphita on 11/11/22.
//

import Foundation
import CloudKit

struct HistoryModel: Identifiable {
    var id: CKRecord.ID?
    var userId: String
    var choreoDetailId: String
    var recordUrl: String
    var thumbnailUrl: String
    var isDownloaded: Int
    var createDate: Date
    var expiredDate: Int
    var progressValue: Double
    var device: String
    
    init(
        id: CKRecord.ID,
        userId: String,
        choreoDetailId: String,
        recordUrl: String,
        thumbnailUrl: String,
        isDownloaded: Int,
        createDate: Date,
        expiredDate: Int,
        progressValue: Double,
        device: String
    ) {
        self.id = id
        self.userId = userId
        self.choreoDetailId = choreoDetailId
        self.recordUrl = recordUrl
        self.thumbnailUrl = thumbnailUrl
        self.isDownloaded = isDownloaded
        self.createDate = createDate
        self.expiredDate = expiredDate
        self.progressValue = progressValue
        self.device = device
    }
    
    init(
        userId: String,
        choreoDetailId: String,
        recordUrl: String,
        thumbnailUrl: String,
        isDownloaded: Int,
        createDate: Date,
        expiredDate: Int,
        progressValue: Double,
        device: String
    ) {
        self.userId = userId
        self.choreoDetailId = choreoDetailId
        self.recordUrl = recordUrl
        self.thumbnailUrl = thumbnailUrl
        self.isDownloaded = isDownloaded
        self.createDate = createDate
        self.expiredDate = expiredDate
        self.progressValue = progressValue
        self.device = device
    }
}

extension HistoryModel {
    func toHistory(detail: Choreo) -> History {
        return History(
            id: self.id,
            userId: self.userId,
            choreoDetailId: detail,
            recordUrl: self.recordUrl,
            thumbnailUrl: self.thumbnailUrl,
            isDownloaded: self.isDownloaded,
            createdDate: self.createDate,
            expiredDate: self.expiredDate,
            progressValue: self.progressValue,
            device: self.device
        )
    }
}
