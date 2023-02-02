//
//  PadChoreoListViewController+CollectionView.swift
//  Kora
//
//  Created by Agus Hery on 10/01/23.
//

import Foundation
import UIKit

extension PadChoreoListViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        choreoListData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PadCollectionViewCell.identifier, for: indexPath) as! PadCollectionViewCell
        cell.resetStyle()
        cell.configureCollectionCell(with: choreoListData[indexPath.row])
        if choreoListData[indexPath.row].isAvailable {
            shadow(cell: cell)
        }
        return cell
        
    }
    /// configure collection cell size
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 423, height: 247)
    }
    
    /// configure spacing between  collection cell
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let data = choreoListData[indexPath.row]
        if data.isAvailable {
            presenter?.goToChoreoDetail(data)
        }
    }
}
