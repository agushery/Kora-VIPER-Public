//
//  ChoreoDetailRouterType.swift
//  Kora
//
//  Created by Agus Hery on 07/01/23.
//

import Foundation
import UIKit

typealias ChoreoDetailEntryPoint = ChoreoDetailViewControllerType & UIViewController

protocol ChoreoDetailRouterType {
    
    var entryPoint: ChoreoDetailEntryPoint? { get set }
    
    static func start(_ choreo: Choreo?) -> ChoreoDetailRouterType
    
    func goToRoute(_ to: ScreenType)
}
