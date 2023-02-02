//
//  TableViewCell+CollectionView.swift
//  Kora
//
//  Created by Agus Hery on 02/01/23.
//

import Foundation
import UIKit

// MARK: - Delegate and Data Source
extension TableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    /// configure total collection cell at current table row
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    /// configure data collection cell
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifier, for: indexPath) as! CollectionViewCell
        cell.resetStyle()
        cell.presenter = self.presenter
        cell.configureCollectionCell(with: data[indexPath.row])
        if data[indexPath.row].isAvailable {
            shadow(cell: cell)
        }
        return cell
    }
    /// configure collection cell size
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 300, height: 200)
    }
    
    /// configure spacing between  collection cell
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            return 30
    }
    
    /// configure when collection cell was selected
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if data[indexPath.row].isAvailable {
            presenter?.goToChoreoDetail(data[indexPath.row])
        }
    }
}
