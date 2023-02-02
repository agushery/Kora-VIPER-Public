//
//  ChoreoDetailInteractorType.swift
//  Kora
//
//  Created by Agus Hery on 07/01/23.
//

import Foundation

protocol ChoreoDetailInteractorType{
    
    var presenter: ChoreoDetailPresenterType? { get set}
    
    func fetchODRAssets(fileName: [String])
}
