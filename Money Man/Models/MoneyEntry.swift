//
//  MoneyEntry.swift
//  Money Man
//
//  Created by Andrej Lotski on 2/12/21.
//

import Foundation

struct MoneyEntry: Identifiable {
    let id = UUID()
    let title: String
    var price: Int
    var entryDate: Date
    
    init(title: String, price: Int, entryDate: Date) {
        self.title = title
        self.price = price
        self.entryDate = entryDate
    }
}
