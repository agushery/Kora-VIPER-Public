//
//  ChoreoListViewController.swift
//  Kora
//
//  Created by Agus Hery on 01/01/23.
//

import UIKit

class PhoneChoreoListViewController: UIViewController, ChoreoListViewControllerType {
    
    var presenter: ChoreoListPresenterType?
    
    var choreoListData: [Choreo] = [] {
        didSet {
            tableView.reloadData()
        }
    }

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBar(K.ChoreoList.navTitle, target: #selector(goToRoute(_:)))
        tableView.register(TableViewCell.nib(), forCellReuseIdentifier: TableViewCell.identifier)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = UIColor(named: K.Color.bgColor)
    }
    @objc func goToRoute(_ route: UIButton) {
        presenter?.goToRoute(route)
    }
}
