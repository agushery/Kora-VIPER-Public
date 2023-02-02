//
//  ChoreoDetailInteractor.swift
//  Kora
//
//  Created by Agus Hery on 07/01/23.
//

import Foundation

class ChoreoDetailInteractor: ChoreoDetailInteractorType {
    
    var presenter: ChoreoDetailPresenterType?
    
    var odrService =  ODRServiceImpl.shared
    
    func fetchODRAssets(fileName: [String]) {
        odrService.fetchVideoWith(tag: Set(fileName)) { status in
            self.presenter?.isODRSuccess = status == .AlreayDownloaded ? true : false
        } onFailure: { error in
            print(error.localizedDescription)
        } onProgress: { progress in
            print(progress.completedUnitCount)
        }

    }
}
