//
//  SettingPresenter.swift
//  Kora
//
//  Created by Agus Hery on 06/01/23.
//

import Foundation
import UIKit

class SettingPresenter: SettingPresenterType {
    
    var view: SettingViewControllerType?
    
    var interactor: SettingInteractorType?
    
    var router: SettingRouteType?
    
    func goToRoute(_ button: UIButton) {
        router?.route(to: .ChoreoList)
    }
}
