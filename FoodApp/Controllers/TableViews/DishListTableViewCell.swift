//
//  DishListTableViewCell.swift
//  FoodApp
//
//  Created by Marvellous Dirisu on 05/09/2022.
//

import UIKit

class DishListTableViewCell: UITableViewCell {
    
    static let identifier = "DishListTableViewCell"

    @IBOutlet weak var dishImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    func setUp(dish: Dish) {
        dishImage.kf.setImage(with: dish.image?.asUrl)
        titleLabel.text = dish.name
        descriptionLabel.text = dish.description
    }
    
    func setUp(order: Orders) {
        dishImage.kf.setImage(with: order.dish?.image?.asUrl)
        titleLabel.text = order.dish?.name
        descriptionLabel.text = order.name
}

}
