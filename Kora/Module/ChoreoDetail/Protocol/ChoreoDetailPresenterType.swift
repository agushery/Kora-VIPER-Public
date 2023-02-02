//
//  ChoreoDetailPresenterType.swift
//  Kora
//
//  Created by Agus Hery on 07/01/23.
//

import Foundation
import AVFoundation

protocol ChoreoDetailPresenterType {
    
    var view: ChoreoDetailViewControllerType? { get set }
    
    var interactor: ChoreoDetailInteractorType? { get set }
    
    var router: ChoreoDetailRouterType? { get set }
    
    var choreoData: Choreo? { get set }
    
    var videoPlayer: AVPlayer? { get set }
    
    var videoPlayerLayer: AVPlayerLayer? { get set }
    
    var playerLooper: AVPlayerLooper? { get set }
    
    func videoLoop(fileName: String?) -> AVPlayerLayer?
    
    func muteVideo(_ isMute: Bool)
    
    func getODRAssets(fileName: [String])
    
    var isODRSuccess: Bool? { get set }
}
