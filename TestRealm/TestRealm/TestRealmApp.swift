//
//  TestRealmApp.swift
//  TestRealm
//
//  Created by KimSungSik on 2023/08/21.
//

import SwiftUI

@main
struct TestRealmApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
