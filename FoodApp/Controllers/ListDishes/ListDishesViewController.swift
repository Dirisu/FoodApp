//
//  ListDishesViewController.swift
//  FoodApp
//
//  Created by Marvellous Dirisu on 05/09/2022.
//

import UIKit

class ListDishesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var category: DishCategory!
    
    var dishes: [Dish] = [
        .init(id: "id2", name: "Garri", description: "Amazing Ijebu Garri", image: "https://picsum.photos/100/200", calories: 300),
        .init(id: "id2", name: "Beans", description: "Best Ewa agoin", image: "https://picsum.photos/100/200", calories: 364),
        .init(id: "id2", name: "Cassava", description: "Strong Cassava", image: "https://picsum.photos/100/200", calories: 1050),
        .init(id: "id2", name: "Maize", description: "Agbado for you", image: "https://picsum.photos/100/200", calories: 20),
        .init(id: "id2", name: "Rice", description: "Destoned Rice", image: "https://picsum.photos/100/200", calories: 3450)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = category.name
        registerCells()
    }
    
    private func registerCells() {
        tableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
    }
    

}

extension ListDishesViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dishes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifier, for: indexPath) as! DishListTableViewCell
        cell.setUp(dish: dishes[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = DishDetailViewController.instantiate()
        controller.dish = dishes[indexPath.row]
        navigationController?.pushViewController(controller, animated: true)
    }
    
    
}
