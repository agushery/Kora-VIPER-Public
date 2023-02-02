//
//  SettingRouterType.swift
//  Kora
//
//  Created by Agus Hery on 06/01/23.
//

import Foundation
import UIKit

typealias SettingEntryPoint =  SettingViewControllerType & UIViewController

protocol SettingRouteType {
    
    var entryPoint: SettingEntryPoint? { get set }
    
    static func start() -> SettingRouteType
    
    func route(to screen: ScreenType)
    
    func getData(_ data: ChoreoDetail)
}
