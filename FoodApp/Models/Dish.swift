//
//  Dish.swift
//  FoodApp
//
//  Created by Marvellous Dirisu on 24/08/2022.
//

import Foundation

struct Dish {
    let id, name, description, image: String?
    let calories: Int?
    
    var formattedCalories: String {
//        return String(format: "%.2f Calories", calories ?? 0)
        return "\(calories ?? 0) calories"
    }
}
