//
//  ChoreoListInteractor.swift
//  Kora
//
//  Created by Agus Hery on 28/12/22.
//

import Foundation

class ChoreoListInteractor: ChoreoListInteractorType {
    
    var presenter: ChoreoListPresenterType?
    var ckService = CloudKitServiceImpl.shared
    
    func fetchChoreoList() {
        ckService.fetchChoreo(limit: 20, filter: ContentFilter.all) { data in
            switch data {
            case .success(let choreoData):
                self.presenter?.getChoreoList(with: .success(choreoData))
            case .failure(let error):
                self.presenter?.getChoreoList(with: .failure(error))
            }
        }
    }
}
