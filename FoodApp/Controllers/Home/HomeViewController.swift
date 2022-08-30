//
//  HomeViewController.swift
//  FoodApp
//
//  Created by Marvellous Dirisu on 18/08/2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    @IBOutlet weak var popularDishCategory: UICollectionView!
    @IBOutlet weak var dishLandscapeCollection: UICollectionView!
    
    // food categories data source
    var categories: [DishCategory] = [
        .init(id: "id1", name: "Africa Dish", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "African Dish 2", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "African Dish 3", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "African Dish 4", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "African Dish", image: "https://picsum.photos/100/200")
        
    ]
    
    // popular dishes data source
    var popularDishes: [Dish] = [
        .init(id: "id2", name: "Garri", description: "Amazing Ijebu Garri", image: "https://picsum.photos/100/200", calories: 300),
        .init(id: "id2", name: "Beans", description: "Best Ewa agoin", image: "https://picsum.photos/100/200", calories: 364),
        .init(id: "id2", name: "Cassava", description: "Strong Cassava", image: "https://picsum.photos/100/200", calories: 1050),
        .init(id: "id2", name: "Maize", description: "Agbado for you", image: "https://picsum.photos/100/200", calories: 20),
        .init(id: "id2", name: "Rice", description: "Destoned Rice", image: "https://picsum.photos/100/200", calories: 3450)
    ]
    
    var specials: [Dish] = [
        .init(id: "id2", name: "Cassava", description: "Strong Cassava", image: "https://picsum.photos/100/200", calories: 1050),
        .init(id: "id2", name: "Maize", description: "Agbado for you", image: "https://picsum.photos/100/200", calories: 20),
        .init(id: "id2", name: "Rice", description: "Destoned Rice", image: "https://picsum.photos/100/200", calories: 3450)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerCells()
        // Do any additional setup after loading the view.
    }
    
    private func registerCells() {
        // food category
        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
        
        // popular dishes
        popularDishCategory.register(UINib(nibName: PopularDishCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: PopularDishCollectionViewCell.identifier)
        
        // special dishes
        dishLandscapeCollection.register(UINib(nibName: DishLandscapeCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: DishLandscapeCollectionViewCell.identifier)
    }
    
    
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        switch collectionView {
        case categoryCollectionView:
            return categories.count
        case popularDishCategory:
            return popularDishes.count
        case dishLandscapeCollection:
            return specials.count
        default:
            return 0
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView {
        case categoryCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
            cell.setUp(category: categories[indexPath.row])
            return cell
            
        case popularDishCategory:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PopularDishCollectionViewCell.identifier, for: indexPath) as! PopularDishCollectionViewCell
            cell.setUp(dish: popularDishes[indexPath.row])
            
            return cell
            
            
        case dishLandscapeCollection:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishLandscapeCollectionViewCell.identifier, for: indexPath) as! DishLandscapeCollectionViewCell
            cell.setUp(dish: specials[indexPath.row])
            
            return cell
            
        default:
            return UICollectionViewCell()
            
        }
        
    }
}
