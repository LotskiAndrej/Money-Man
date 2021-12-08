//
//  MonthlyListViewModel.swift
//  Money Man
//
//  Created by Andrej Lotski on 8/12/21.
//

import Foundation

class MonthlyListViewModel: ObservableObject {
    @Published var sectionsByYear = [Year]()
    private var months = [Month]()
    private var entries = [MoneyEntry]()
    private let dataSource = DataSource()
    
    init() {
        fetchData()
    }
    
    private func fetchData() {
        entries = dataSource.fetchData()
        constructSectionsByMonth()
    }
    
    private func constructSectionsByMonth() {
        entries.sort { $0.entryDate > $1.entryDate }
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM"
        
        months = Dictionary(grouping: entries) { entry in
            let components = Calendar.current.dateComponents([.month, .year], from: entry.entryDate)
            guard let date = Calendar.current.date(from: components) else { return "" }
            return dateFormatter.string(from: date)
        }
        .map { Month(title: $0.key, entries: $0.value, date: $0.value[0].entryDate) }
        .sorted { $0.date > $1.date }
        
        constructSectionsByYear()
    }
    
    private func constructSectionsByYear() {
        let months = months.sorted { $0.date > $1.date }
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy"
        
        sectionsByYear = Dictionary(grouping: months) { month in
            let components = Calendar.current.dateComponents([.month, .year], from: month.date)
            guard let date = Calendar.current.date(from: components) else { return "" }
            return dateFormatter.string(from: date)
        }
        .map { Year(title: $0.key, months: $0.value, date: $0.value[0].date) }
        .sorted { $0.date > $1.date }
    }
}
