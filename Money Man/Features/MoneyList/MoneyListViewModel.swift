//
//  MoneyListViewModel.swift
//  Money Man
//
//  Created by Andrej Lotski on 2/12/21.
//

import Combine
import SwiftUI

class MoneyListViewModel: ObservableObject {
    @Published var moneyEntries = [
        MoneyEntry(title: "Sok",
                   price: 50,
                   entryDate: Date.from(year: 2021, month: 5, day: 16, hour: 12, minute: 20)),
        MoneyEntry(title: "Gorivo",
                   price: 1000,
                   entryDate: Date.from(year: 2020, month: 11, day: 1, hour: 22, minute: 10)),
        MoneyEntry(title: "Gorivo",
                   price: 500,
                   entryDate: Date.from(year: 2021, month: 5, day: 16, hour: 5, minute: 12)),
        MoneyEntry(title: "Gorivo",
                   price: 500,
                   entryDate: Date.from(year: 2021, month: 5, day: 16, hour: 16, minute: 45)),
        MoneyEntry(title: "Gorivo",
                   price: 500,
                   entryDate: Date.from(year: 2021, month: 5, day: 16, hour: 22, minute: 10)),
        MoneyEntry(title: "Duks",
                   price: 1500,
                   entryDate: Date.from(year: 2021, month: 5, day: 23, hour: 22, minute: 10)),
        MoneyEntry(title: "Mastiki",
                   price: 30,
                   entryDate: Date.from(year: 2019, month: 1, day: 20, hour: 22, minute: 10)),
        MoneyEntry(title: "Cigari",
                   price: 150,
                   entryDate: Date.from(year: 2018, month: 2, day: 12, hour: 22, minute: 10))
    ]
    @Published var sectionByMonth = [Day]()
    
    init() {
        constructSections()
    }
    
    private func constructSections() {
        let entries = moneyEntries.sorted { $0.entryDate > $1.entryDate }
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM yyyy"
        
        sectionByMonth = Dictionary(grouping: entries) { entry in
            let components = Calendar.current.dateComponents([.month, .year], from: entry.entryDate)
            let date = Calendar.current.date(from: components)!
            return dateFormatter.string(from: date)
        }
        .map { Day(title: $0.key, entries: $0.value, date: $0.value[0].entryDate) }
        .sorted { $0.date > $1.date }
    }
}
