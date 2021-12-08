//
//  MainTabView.swift
//  Money Man
//
//  Created by Andrej Lotski on 1/12/21.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            EntriesListView(viewModel: EntriesListViewModel())
            .tabItem {
                Image(systemName: selectedTab == 0 ? "dollarsign.circle.fill" : "dollarsign.circle")
                Text("Money List")
            }
            .tag(0)
            
            MonthlyListView(viewModel: MonthlyListViewModel())
            .tabItem {
                Image(systemName: selectedTab == 1 ? "calendar.circle.fill" : "calendar.circle")
                Text("Calendar")
            }
            .tag(1)
        }
    }
}
