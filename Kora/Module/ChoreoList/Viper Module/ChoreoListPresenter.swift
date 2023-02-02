//
//  ChoreoListPresenter.swift
//  Kora
//
//  Created by Agus Hery on 29/12/22.
//

import Foundation
import UIKit

class ChoreoListPresenter: ChoreoListPresenterType {
    
    var view: ChoreoListViewControllerType?
    
    var interactor: ChoreoListInteractorType?
    
    var router: ChoreoListRouterType?
    
    func getChoreoList(with result: Result<[ChoreoModel], Error>) {
        switch result{
            case .success(let choreoData):
            
                view?.choreoListData = []
            
                var tempData: [Choreo] = []
            
                choreoData.forEach { data in
                    tempData.append(data.toChoreo())
                }
            
                view?.choreoListData = tempData
                .sorted(by: { $0.order < $1.order })
            
            
            case .failure(let error):
                print("Error when load choreo list data: \(error.localizedDescription)")
        }
    }
    
    func updateChoreoList() {
        interactor?.fetchChoreoList()
    }
    
    func goToRoute(_ route: UIButton) {
        switch route.tag {
        case 1:
            router?.route(to: .Setting, nil)
        case 2:
            print(Difficulty.beginner)
        case 3:
            print(Difficulty.intermediate)
        case 4:
            print(Difficulty.advance)
        default:
            break
        }
    }
    
    func goToChoreoDetail(_ data: Choreo) {
        router?.route(to: .ChoreoDetail, data)
    }
}
