//
//  ListOrderViewController.swift
//  FoodApp
//
//  Created by Marvellous Dirisu on 05/09/2022.
//

import UIKit

class ListOrderViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var orders: [Orders] = [
        .init(id: "id", name: "order1", dish: .init(id: "id2", name: "Garri", description: "Amazing Ijebu Garri", image: "https://picsum.photos/100/200", calories: 300)),
        .init(id: "id", name: "order1", dish: .init(id: "id2", name: "Garri", description: "Amazing Ijebu Garri", image: "https://picsum.photos/100/200", calories: 300)),
        .init(id: "id", name: "order1", dish: .init(id: "id2", name: "Garri", description: "Amazing Ijebu Garri", image: "https://picsum.photos/100/200", calories: 300))
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Orders"
        registerCells()
    }
    
    private func registerCells() {
        tableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
    }

}

extension ListOrderViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orders.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifier, for: indexPath) as! DishListTableViewCell
        cell.setUp(order: orders[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = DishDetailViewController.instantiate()
        controller.dish = orders[indexPath.row].dish
        navigationController?.pushViewController(controller, animated: true)
    }
    
}
