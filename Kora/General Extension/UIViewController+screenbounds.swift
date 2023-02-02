//
//  UIViewController+screenbounds.swift
//  Kora
//
//  Created by Agus Hery on 02/01/23.
//

import Foundation
import UIKit

/// Store width value of device
let UI_WIDTH = UIScreen.main.bounds.width
/// Store height value of device
let UI_HEIGHT = UIScreen.main.bounds.height

///  This extension use to get value from dynamic screen bound device and can present on every device
extension UIViewController {
    /// use to get width value
    func getWidth(for width: Double) -> Double {
        /// get ratio from figma
        return width * ( UI_WIDTH / 1366 )
    }
    
    /// use to get width value
    func getHeight(for height: Double) -> Double {
        /// get ratio from figma
        return height * ( UI_HEIGHT / 1024 )
    }
}
