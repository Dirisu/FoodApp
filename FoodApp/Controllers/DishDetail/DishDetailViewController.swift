//
//  DishDetailViewController.swift
//  FoodApp
//
//  Created by Marvellous Dirisu on 31/08/2022.
//

import UIKit

class DishDetailViewController: UIViewController {

    @IBOutlet weak var dishImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var nameField: UITextField!
    
    var dish: Dish!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        populateView()
    }
    
    private func populateView() {
        dishImage.kf.setImage(with: dish.image?.asUrl)
        titleLabel.text = dish.name
        caloriesLabel.text = dish.formattedCalories
        descriptionLabel.text = dish.description
    }
    
    @IBAction func orderButton(_ sender: UIButton) {
    }
    
    
}
