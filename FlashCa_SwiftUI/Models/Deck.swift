//
//  Deck.swift
//  FlashCa_SwiftUI
//
//  Created by Руслан Штыбаев on 19.11.2023.
//

import SwiftData
import Foundation

@Model
final class Deck {
    var name: String
    var createAt: Date
    var about: String
//    var description: String
    
    init(name: String, createAt: Date, about: String) {
        self.name = name
        self.createAt = createAt
        self.about = about
    }
}
