//
//  ODRService.swift
//  Kora
//
//  Created by Agus Hery on 24/01/23.
//

import Foundation
/// ODRService protocol. (On-Demand Resource)
protocol ODRService {
    func fetchVideoWith(tag: Set<String>, onSuccess: @escaping (ODRStatus) -> Void, onFailure: @escaping (Error) -> Void, onProgress: @escaping (Progress) -> Void)
}

/// ODR ENUM
enum ODRStatus {
    case OnDownloaded
    case AlreayDownloaded
}
