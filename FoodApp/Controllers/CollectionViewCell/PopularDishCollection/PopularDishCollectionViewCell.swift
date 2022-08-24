//
//  PopularDishCollectionViewCell.swift
//  FoodApp
//
//  Created by Marvellous Dirisu on 24/08/2022.
//

import UIKit

class PopularDishCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "PopularDishCollectionViewCell"

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    func setUp(dish: Dish) {
        titleLabel.text = dish.name
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        caloriesLabel.text = dish.formattedCalories
        descriptionLabel.text = dish.description
    }

}
