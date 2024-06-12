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
    let term: String
    let descript: String
    
    init(term: String, descript: String) {
        self.term = term
        self.descript = descript
    }
}
