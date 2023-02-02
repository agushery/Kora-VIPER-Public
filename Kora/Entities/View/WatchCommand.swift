//
//  WatchCommand.swift
//  KoraDance
//
//  Created by Ardian Pramudya Alphita on 17/11/22.
//

import Foundation

struct Command<T: Codable>: Codable {
    var speechCommand: SpeechCommand?
    var body: T? = nil
    
    init(speechCommand: SpeechCommand? = nil, body: T? = nil) {
        self.speechCommand = speechCommand
        self.body = body
    }
}
