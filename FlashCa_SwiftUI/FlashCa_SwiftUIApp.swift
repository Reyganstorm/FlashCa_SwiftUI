//
//  FlashCa_SwiftUIApp.swift
//  FlashCa_SwiftUI
//
//  Created by Руслан Штыбаев on 06.11.2023.
//

import SwiftUI
import SwiftData

@main
struct FlashCa_SwiftUIApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
//            ContentView()
            StartView()
        }
        .modelContainer(sharedModelContainer)
    }
}
