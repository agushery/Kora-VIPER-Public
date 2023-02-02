//
//  ChoreoListRouter.swift
//  Kora
//
//  Created by Agus Hery on 29/12/22.
//

import Foundation
import UIKit


class ChoreoListRouter: ChoreoListRouterType {
    
    var entryPoint: ChoreoListEntryPoint?
    
    static func start() -> ChoreoListRouterType {
        
        let router = ChoreoListRouter()
        var view: ChoreoListViewControllerType = UIDevice.current.userInterfaceIdiom == .phone ? PhoneChoreoListViewController() : PadChoreoListViewController()
        var interactor: ChoreoListInteractorType = ChoreoListInteractor()
        var presenter: ChoreoListPresenterType = ChoreoListPresenter()
        
        presenter.router = router
        presenter.view = view
        presenter.interactor = interactor
        
        view.presenter = presenter
        
        interactor.presenter = presenter
        
        router.entryPoint = view as? ChoreoListEntryPoint
        
        interactor.fetchChoreoList()
        
        return router
    }
    
    func route(to screen: ScreenType, _ data: Choreo? = nil) {
        switch screen {
        case .ChoreoList:
            print("Choreo List")
        case .ChoreoDetail:
            guard let data = data else { break }
            let newRouter = ChoreoDetailRouter.start(data)
            guard let newRouter = newRouter.entryPoint else { break }
            entryPoint?.show(newRouter, sender: nil)
        case .Learning:
            print("Learning View")
        case .Result:
            print("Result View")
            
        case .Setting:
            
            let newRouter = SettingRouter.start()
            guard let newRouter = newRouter.entryPoint else { break }
            entryPoint?.present(newRouter, animated: true)
        }
    }
}
