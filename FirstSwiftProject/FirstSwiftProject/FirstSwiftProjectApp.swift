//
//  FirstSwiftProjectApp.swift
//  FirstSwiftProject
//
//  Created by KimSungSik on 2023/08/12.
//

import SwiftUI

@main
struct FirstSwiftProjectApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
