//
//  PadChoreoListViewController.swift
//  Kora
//
//  Created by Agus Hery on 09/01/23.
//

import UIKit

class PadChoreoListViewController: UIViewController, ChoreoListViewControllerType {
    
    var presenter: ChoreoListPresenterType?
    
    var choreoListData: [Choreo] = [] {
        didSet {
            collectionView.reloadData()
        }
    }

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.setupNavBar(K.ChoreoList.navTitle, target: #selector(goToRoute(_:)))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupNavBar(K.ChoreoList.navTitle, target: #selector(goToRoute(_:)))
        collectionView.register(PadCollectionViewCell.nib(), forCellWithReuseIdentifier: PadCollectionViewCell.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    @objc func goToRoute(_ route: UIButton) {
        presenter?.goToRoute(route)
    }
    
}
