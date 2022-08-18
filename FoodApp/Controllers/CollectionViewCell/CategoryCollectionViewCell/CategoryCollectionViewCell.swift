//
//  CategoryCollectionViewCell.swift
//  FoodApp
//
//  Created by Marvellous Dirisu on 18/08/2022.
//

import UIKit
import Kingfisher

class CategoryCollectionViewCell: UICollectionViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var categoryImageView: UIImageView!
    @IBOutlet weak var categoryTextLabel: UILabel!
    
    func setUp(category: DishCategory) {
        
        categoryTextLabel.text = category.name
        categoryImageView.kf.setImage(with: category.image.asUrl)
        
        
    }
}