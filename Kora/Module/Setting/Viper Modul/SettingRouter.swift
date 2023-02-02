//
//  SettingRouter.swift
//  Kora
//
//  Created by Agus Hery on 06/01/23.
//

import Foundation

class SettingRouter: SettingRouteType {
    
    var entryPoint: SettingEntryPoint?
    
    static func start() -> SettingRouteType {
        
        let router = SettingRouter()
        var view: SettingViewControllerType = SettingViewController()
        var presenter: SettingPresenterType = SettingPresenter()
        var interactor: SettingInteractorType = SettingInteractor()
        
        view.presenter = presenter
        
        presenter.router = router
        presenter.view = view
        presenter.interactor = interactor
        
        interactor.presenter = presenter
        
        router.entryPoint = view as? SettingEntryPoint
        
        return router
    }
    
    func route(to screen: ScreenType) {
        switch screen {
        case .ChoreoList:
            print("Choreo List")
        case .ChoreoDetail:
            entryPoint?.dismiss(animated: true)
        case .Learning:
            print("Learning View")
        case .Result:
            print("Result View")
        case .Setting:
            print("Setting View")
        }
    }
    
    func getData(_ data: ChoreoDetail) {
        print("YOHO")
    }
    
}
