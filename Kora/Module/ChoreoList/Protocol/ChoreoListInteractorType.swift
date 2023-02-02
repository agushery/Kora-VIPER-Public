//
//  ChoreoListInteractorType.swift
//  Kora
//
//  Created by Agus Hery on 28/12/22.
//

import Foundation

protocol ChoreoListInteractorType {
    
    var presenter : ChoreoListPresenterType?  { get set }
    
    func fetchChoreoList()

}
