//
//  SettingPresenterType.swift
//  Kora
//
//  Created by Agus Hery on 06/01/23.
//

import Foundation
import UIKit

protocol SettingPresenterType {
    
    var view: SettingViewControllerType? { get set }
    
    var interactor: SettingInteractorType? { get set }
    
    var router: SettingRouteType? { get set }
    
    func goToRoute(_ button: UIButton)
}
