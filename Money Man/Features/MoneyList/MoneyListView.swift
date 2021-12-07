//
//  ContentView.swift
//  Money Man
//
//  Created by Andrej Lotski on 1/12/21.
//

import SwiftUI
import Combine

struct MoneyListView: View {
    @ObservedObject var viewModel: MoneyListViewModel
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.sectionByMonth) { section in
                    Section(header: Text(section.title)) {
                        ForEach(section.entries) { entry in
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
                }
            }
            .navigationTitle("Money List")
        }
    }
}
