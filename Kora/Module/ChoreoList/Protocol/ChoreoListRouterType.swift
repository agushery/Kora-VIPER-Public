//
//  ChoreoListRouterType.swift
//  Kora
//
//  Created by Agus Hery on 29/12/22.
//

import Foundation
import UIKit

typealias ChoreoListEntryPoint =  ChoreoListViewControllerType & UIViewController

protocol ChoreoListRouterType {
    
    var entryPoint: ChoreoListEntryPoint? { get }
    
    static func start() -> ChoreoListRouterType
    
    func route(to screen: ScreenType, _ data: Choreo?)
}
