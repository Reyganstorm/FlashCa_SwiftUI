//
//  Deck.swift
//  FlashCa_SwiftUI
//
//  Created by Руслан Штыбаев on 19.11.2023.
//

import SwiftData
import Foundation

/// Model used for save data
///  need more properties 

@Model
final class Deck {
    var name: String
    var createAt: Date
    var about: String
    var cards: [Card]
    
    init(name: String, 
         createAt: Date,
         about: String,
         cards: [Card] = []
    ) {
        self.name = name
        self.createAt = createAt
        self.about = about
        self.cards = cards
    }
}
