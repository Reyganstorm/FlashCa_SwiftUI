//
//  MockStorage.swift
//  FlashCa_SwiftUI
//
//  Created by Руслан Штыбаев on 19.11.2023.
//

import SwiftUI
import SwiftData

class MockStorage {
    @Environment(\.modelContext) private var modelContext
    
    private let data = [
        Deck(name: "First", createAt: Date(), about: "Description"),
        Deck(name: "Second", createAt: Date(), about: "Description"),
        Deck(name: "Third", createAt: Date(), about: "Description"),
        Deck(name: "Four", createAt: Date(), about: "Description"),
        Deck(name: "Five", createAt: Date(), about: "Description")
    ]
    
    func createTempData(_ completion: @escaping() -> Void ) {
        data.forEach { deck in
            modelContext.insert(deck)
        }
    }
}
