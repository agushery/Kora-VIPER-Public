//
//  ChoreoListPresenterType.swift
//  Kora
//
//  Created by Agus Hery on 28/12/22.
//

import Foundation
import UIKit

protocol ChoreoListPresenterType {
    
    var view: ChoreoListViewControllerType? { get set }
    
    var interactor: ChoreoListInteractorType? { get set }
    
    var router: ChoreoListRouterType? { get set }
    
    func getChoreoList(with result: Result<[ChoreoModel], Error>)
    
    func updateChoreoList()
    
    func goToRoute(_ route: UIButton)
    
    func goToChoreoDetail(_ data: Choreo)
}
