//
//  CardDeckStatistic.swift
//  FlashCa_SwiftUI
//
//  Created by Руслан Штыбаев on 29.07.2024.
//

import Foundation

final class CardDeckStatistic {
    let id: UUID
    let deck: Deck
    
    
    init(id: UUID, deck: Deck) {
        self.id = id
        self.deck = deck
    }
}
