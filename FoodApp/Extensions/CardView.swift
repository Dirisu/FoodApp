//
//  CardView.swift
//  FoodApp
//
//  Created by Marvellous Dirisu on 19/08/2022.
//

import UIKit

class CardView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        initialSetUp()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        initialSetUp()
    }
    
    private func initialSetUp() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = .zero
        layer.cornerRadius = 10
        layer.shadowOpacity = 0.1
        layer.shadowRadius = 10
        cornerRadius = 10
    }
}
