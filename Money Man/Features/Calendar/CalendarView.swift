//
//  CalendarView.swift
//  Money Man
//
//  Created by Andrej Lotski on 1/12/21.
//

import SwiftUI
import Combine

struct CalendarView: View {
    @ObservedObject var viewModel: MoneyListViewModel
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.sectionByMonth) { entry in
                    Text(entry.title)
                }
            }
            .navigationTitle("Calendar")
        }
    }
}
