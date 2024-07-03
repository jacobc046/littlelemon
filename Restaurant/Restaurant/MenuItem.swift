//
//  MenuItem.swift
//  Restaurant
//
//  Created by Jacob Croket on 6/26/24.
//

import Foundation

struct MenuItem: Decodable, Identifiable {
    var id = UUID()
    let title: String
    let price: String
    let image: String
    let category: String
    let itemDescription: String
    
    enum CodingKeys: String, CodingKey {
        case title, price, image, category, itemDescription = "description"
    }
}
