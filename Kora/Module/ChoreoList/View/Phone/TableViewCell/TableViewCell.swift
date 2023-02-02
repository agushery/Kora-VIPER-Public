//
//  TableViewCell.swift
//  Kora
//
//  Created by Agus Hery on 01/01/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var collectionView: UICollectionView!
    
    var data = [Choreo]()
    var presenter: ChoreoListPresenterType?
    
    static let identifier: String = "TableViewCell"
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.register(CollectionViewCell.nib(), forCellWithReuseIdentifier: CollectionViewCell.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = UIColor(named: K.Color.bgColor)
        collectionView.contentInset =  UIEdgeInsets(top: 0, left: 20, bottom: -20, right: 20)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func updateData(with data: [Choreo]) {
        self.data = data
        collectionView.reloadData()
    }
}

