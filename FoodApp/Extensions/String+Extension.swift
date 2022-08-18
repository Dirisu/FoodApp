//
//  String+Extension.swift
//  FoodApp
//
//  Created by Marvellous Dirisu on 18/08/2022.
//

import Foundation

extension String {
    var asUrl: URL? {
        return URL(string: self)
    }
}
