//
//  Dish+CoreDataProperties.swift
//  
//
//  Created by Jacob Croket on 7/1/24.
//
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension Dish {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Dish> {
        return NSFetchRequest<Dish>(entityName: "Dish")
    }

    @NSManaged public var image: String?
    @NSManaged public var itemDescription: String?
    @NSManaged public var price: String?
    @NSManaged public var title: String?

}

extension Dish : Identifiable {

}
