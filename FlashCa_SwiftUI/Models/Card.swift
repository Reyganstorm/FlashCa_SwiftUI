//
//  Card.swift
//  FlashCa_SwiftUI
//
//  Created by Руслан Штыбаев on 12.06.2024.
//

import Foundation
import SwiftData

@Model
final class Card {
    let id: Int
    let term: String
    let descript: String
    
    init(id: Int,term: String, descript: String) {
        self.id = id
        self.term = term
        self.descript = descript
    }
}
