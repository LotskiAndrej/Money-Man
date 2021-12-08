//
//  DataSource.swift
//  Money Man
//
//  Created by Andrej Lotski on 8/12/21.
//

import Foundation

class DataSource {
    private var entries = [
        MoneyEntry(title: "Jadenje",
                   price: 320,
                   entryDate: Date.from(year: 2021, month: 8, day: 4, hour: 1, minute: 0)),
        MoneyEntry(title: "Upaljac",
                   price: 40,
                   entryDate: Date.from(year: 2021, month: 3, day: 22, hour: 20, minute: 4)),
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
    
    func fetchData() -> [MoneyEntry] {
        return entries
    }
}
