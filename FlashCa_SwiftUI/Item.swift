//
//  Item.swift
//  FlashCa_SwiftUI
//
//  Created by Руслан Штыбаев on 06.11.2023.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
