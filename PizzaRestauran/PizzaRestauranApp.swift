//
//  PizzaRestauranApp.swift
//  PizzaRestauran
//
//  Created by Yağız Ata Özkan on 3.05.2021.
//

import SwiftUI

@main
struct PizzaRestauranApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
