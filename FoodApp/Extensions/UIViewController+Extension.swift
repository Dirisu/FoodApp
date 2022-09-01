//
//  UIViewController+Extension.swift
//  FoodApp
//
//  Created by Marvellous Dirisu on 31/08/2022.
//

import UIKit

extension UIViewController {
    
    static var identifier: String {
        
        // returns string with the identifier as class
        return String(describing: self)
    }
    
    static func instantiate() -> Self {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: identifier) as! Self
        
        return controller
    }
}
