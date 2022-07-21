//
//  UIView+Extensions.swift
//  FoodApp
//
//  Created by Marvellous Dirisu on 21/07/2022.
//

import UIKit

extension UIView {
    @IBInspectable var cornerRadius : CGFloat {
        get {
            return cornerRadius
        }
        set {
            self.layer.cornerRadius = newValue
        }
    }
}
