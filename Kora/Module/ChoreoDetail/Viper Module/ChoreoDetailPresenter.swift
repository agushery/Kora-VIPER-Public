//
//  ChoreoDetailPresenter.swift
//  Kora
//
//  Created by Agus Hery on 07/01/23.
//

import Foundation
import AVFoundation

class ChoreoDetailPresenter: ChoreoDetailPresenterType {
    
    var view: ChoreoDetailViewControllerType?
    
    var interactor: ChoreoDetailInteractorType?
    
    var router: ChoreoDetailRouterType?
    
    var choreoData: Choreo?
    
    var odrService = ODRServiceImpl.shared
    
    var videoPlayer: AVPlayer?
    
    var videoPlayerLayer: AVPlayerLayer?
    
    var playerLooper: AVPlayerLooper?
    
    @Published var isODRSuccess: Bool?
    
    func videoLoop(fileName: String?) -> AVPlayerLayer? {
        // Get the path to the resource in the bundle
        guard let data = fileName else { return nil}
        let bundlePath = Bundle.main.url(forResource: data, withExtension: "MP4")
        guard let bundlePath = bundlePath else { return nil}
        
        // Create the video player item
        let item = AVPlayerItem(url: bundlePath)
        
        // Assign an array of 1 item to AVQueuePlayer
        videoPlayer = AVQueuePlayer(items: [item])
        
        // Loop the video
        playerLooper = AVPlayerLooper(player: videoPlayer as! AVQueuePlayer, templateItem: item)
        
        // Create the layer
        videoPlayerLayer = AVPlayerLayer(player: videoPlayer)
        
        // return video player layer
        return videoPlayerLayer
    }
    
    func muteVideo(_ isMute: Bool) {
        if isMute {
            videoPlayer?.volume = 0
        } else {
            videoPlayer?.volume = 1
        }
    }
    
    func getODRAssets(fileName: [String]) {
        interactor?.fetchODRAssets(fileName: fileName)
    }
}
