//
//  Month+Year.swift
//  Money Man
//
//  Created by Andrej Lotski on 8/12/21.
//

import Foundation

struct Month: Identifiable {
    let id = UUID()
    let title: String
    let entries: [MoneyEntry]
    let date: Date
    
    init(title: String, entries: [MoneyEntry], date: Date) {
        self.title = title
        self.entries = entries
        self.date = date
    }
}

struct Year: Identifiable {
    let id = UUID()
    let title: String
    let months: [Month]
    let date: Date
    
    init(title: String, months: [Month], date: Date) {
        self.title = title
        self.months = months
        self.date = date
    }
}
