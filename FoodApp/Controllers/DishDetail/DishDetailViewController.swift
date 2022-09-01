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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func orderButton(_ sender: UIButton) {
    }
    
    
}
