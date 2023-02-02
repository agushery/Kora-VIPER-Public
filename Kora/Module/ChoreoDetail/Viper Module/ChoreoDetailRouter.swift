//
//  ChoreoDetailRouter.swift
//  Kora
//
//  Created by Agus Hery on 07/01/23.
//

import Foundation
import UIKit

class ChoreoDetailRouter: ChoreoDetailRouterType {
    
    var entryPoint: ChoreoDetailEntryPoint?
    
    static func start(_ choreo: Choreo? = nil) -> ChoreoDetailRouterType {
        let router = ChoreoDetailRouter()
        var view: ChoreoDetailViewControllerType = UIDevice.current.userInterfaceIdiom == .phone ? PhoneChoreoDetailViewController() : PadChoreoDetailViewController()
        var presenter: ChoreoDetailPresenterType = ChoreoDetailPresenter()
        var interactor: ChoreoDetailInteractorType = ChoreoDetailInteractor()
        
        view.presenter = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        presenter.choreoData = choreo
        
        interactor.presenter = presenter
        
        router.entryPoint = view as? ChoreoDetailEntryPoint
        
        return router
    }
    
    func goToRoute(_ to: ScreenType) {
        print(to)
    }
    
}
