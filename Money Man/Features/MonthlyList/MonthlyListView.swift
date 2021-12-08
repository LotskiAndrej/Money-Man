//
//  MonthlyListView.swift
//  Money Man
//
//  Created by Andrej Lotski on 1/12/21.
//

import SwiftUI

struct MonthlyListView: View {
    @ObservedObject var viewModel: MonthlyListViewModel
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.sectionsByYear) { year in
                    Section(header: Text(year.title)) {
                        ForEach(year.months) { month in
                            NavigationLink(month.title) {
                                MonthlyDetailsView(month: month)
                            }
                            .padding(.vertical, 8)
                        }
                    }
                }
            }
            .navigationTitle("Calendar")
        }
    }
}
