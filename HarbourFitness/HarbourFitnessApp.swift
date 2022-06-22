//
//  HarbourFitnessApp.swift
//  HarbourFitness
//
//  Created by muhammed thalal on 17/02/22.
//

import SwiftUI

@main
struct HarbourFitnessApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
