//
//  PadChoreoDetailViewController.swift
//  Kora
//
//  Created by Agus Hery on 24/01/23.
//

import UIKit

class PadChoreoDetailViewController: UIViewController, ChoreoDetailViewControllerType {
    
    var presenter: ChoreoDetailPresenterType?
    
    var data: Choreo?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = false
    }

}
