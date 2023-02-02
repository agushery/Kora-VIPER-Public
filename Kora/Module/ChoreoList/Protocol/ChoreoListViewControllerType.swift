//
//  ChoreoListViewControllerType.swift
//  Kora
//
//  Created by Agus Hery on 29/12/22.
//

import Foundation

protocol ChoreoListViewControllerType {
    
    var presenter: ChoreoListPresenterType? { get set }
    
    var choreoListData: [Choreo] { get set }
}
