//
//  Order+CoreDataProperties.swift
//  PizzaRestauran
//
//  Created by Yağız Ata Özkan on 3.05.2021.
//
//

import Foundation
import CoreData


extension Order {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Order> {
        return NSFetchRequest<Order>(entityName: "Order")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var numberOfSlices: Int16
    @NSManaged public var pizzaType: String
    @NSManaged public var status: String
    @NSManaged public var tableNumber: String

    var orderStatus : Status  {
        set {
                    status = newValue.rawValue
            }
            get {
                Status(rawValue: status) ?? .pending
            }
    }
}

extension Order : Identifiable {

}
enum Status: String {
    case pending = "Pending"
    case preparing = "Preparing"
    case completed = "Completed"
}
