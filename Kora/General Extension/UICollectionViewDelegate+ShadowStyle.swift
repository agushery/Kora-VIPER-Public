//
//  UICollectionViewDelegate+ShadowStyle.swift
//  Kora
//
//  Created by Agus Hery on 12/01/23.
//

import Foundation
import UIKit

extension UICollectionViewDelegate {
    func shadow(cell: UICollectionViewCell) {
        cell.layer.cornerRadius = 20.0
        cell.layer.borderWidth = 0.0
        cell.layer.shadowColor = UIColor.black.cgColor
        cell.layer.shadowOffset = CGSize(width: 2, height: 1)
        cell.layer.shadowRadius = 3.0
        cell.layer.shadowOpacity = 1
        cell.layer.masksToBounds = false
    }
}
