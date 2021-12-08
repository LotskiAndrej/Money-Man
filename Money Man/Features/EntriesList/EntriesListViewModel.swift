//
//  EntriesListViewModel.swift
//  Money Man
//
//  Created by Andrej Lotski on 2/12/21.
//

import Foundation

class EntriesListViewModel: ObservableObject {
    @Published var sectionsByMonth = [Month]()
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
        let entries = entries.sorted { $0.entryDate > $1.entryDate }
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM yyyy"
        
        sectionsByMonth = Dictionary(grouping: entries) { entry in
            let components = Calendar.current.dateComponents([.month, .year], from: entry.entryDate)
            guard let date = Calendar.current.date(from: components) else { return "" }
            return dateFormatter.string(from: date)
        }
        .map { Month(title: $0.key, entries: $0.value, date: $0.value[0].entryDate) }
        .sorted { $0.date > $1.date }
    }
}
