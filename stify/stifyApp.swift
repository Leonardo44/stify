//
//  stifyApp.swift
//  stify
//
//  Created by Leo Lopez on 29/9/21.
//

import SwiftUI

@main
struct stifyApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
