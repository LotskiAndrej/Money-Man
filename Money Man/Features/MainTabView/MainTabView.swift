//
//  MainTabView.swift
//  Money Man
//
//  Created by Andrej Lotski on 1/12/21.
//

import SwiftUI
import Combine

struct MainTabView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            MoneyListView()
            .tabItem {
                Image(systemName: selectedTab == 0 ? "dollarsign.circle.fill" : "dollarsign.circle")
                Text("Money List")
            }
            .tag(0)
            
            CalendarView()
            .tabItem {
                Image(systemName: selectedTab == 1 ? "calendar.circle.fill" : "calendar.circle")
                Text("Calendar")
            }
            .tag(1)
        }
    }
}

struct MoneyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
