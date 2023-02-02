//
//  OnDemandResourceService.swift
//  Kora
//
//  Created by Agus Hery on 24/01/23.
//

import Foundation
import UIKit

/// class for ODRService protocol implementation.
class ODRServiceImpl: ODRService {
    
    static let shared = ODRServiceImpl()
    var currentRequest: NSBundleResourceRequest?
    
    private var alreadyLoadedResources = [String]()
    
    func fetchVideoWith(tag: Set<String>, onSuccess: @escaping (ODRStatus) -> Void, onFailure: @escaping (Error) -> Void, onProgress: @escaping (Progress) -> Void) {
        // create instance to perform request
        currentRequest = NSBundleResourceRequest(tags: tag)
        // verify if the creation of instance success or not
        guard let request = currentRequest else { return }
        request.conditionallyBeginAccessingResources { isAvailable in
            if isAvailable {
                onSuccess(ODRStatus.AlreayDownloaded)
            } else {
                request.beginAccessingResources { error in
                    if let error = error {
                        onFailure(error as NSError)
                        return
                    }
                    onSuccess(ODRStatus.OnDownloaded)
                    onProgress(request.progress)
                }
            }
        }
    }
}


