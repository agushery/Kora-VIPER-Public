//
//  UIViewController+Title.swift
//  Kora
//
//  Created by Agus Hery on 11/01/23.
//

import Foundation
import UIKit

extension UIViewController {
    
    func setupNavBar(_ title: String, target: Selector) {
        self.title = title
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.navigationBar.backgroundColor =  UIColor(named: K.Color.bgColor)
        self.navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor(named: K.Color.navTint) as Any]
        let settingBtn = UIBarButtonItem(image: UIImage(systemName: K.Image.setting), style: .done, target: self, action: target)
        settingBtn.tag = 1
        settingBtn.tintColor = UIColor(named: K.Color.navTint)
        self.navigationItem.rightBarButtonItem = settingBtn
    }
    
}
