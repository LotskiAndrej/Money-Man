//
//  ContentView.swift
//  Money Man
//
//  Created by Andrej Lotski on 1/12/21.
//

import SwiftUI

struct EntriesListView: View {
    @ObservedObject var viewModel: EntriesListViewModel
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.sectionsByMonth) { section in
                    Section(header: Text(section.title)) {
                        ForEach(section.entries) { entry in
                            entryView(entry: entry)
                        }
                    }
                }
            }
            .navigationTitle("Money List")
        }
    }
    
    private func entryView(entry: MoneyEntry) -> some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text(String(entry.title))
                    .font(.title2)
                Spacer()
                Text(String(entry.price))
                    .font(.title2)
            }
            Text(entry.entryDate.formatToHours)
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .padding(.vertical, 8)
    }
}
