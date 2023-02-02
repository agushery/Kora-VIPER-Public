//
//  ChoreoDetailViewControllerType.swift
//  Kora
//
//  Created by Agus Hery on 07/01/23.
//

import Foundation

protocol ChoreoDetailViewControllerType {
    
    var presenter: ChoreoDetailPresenterType? { get set }
    
    var data: Choreo? { get set }
    
}
