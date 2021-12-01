//
//  ContentView.swift
//  Money Man
//
//  Created by Andrej Lotski on 1/12/21.
//

import SwiftUI
import Combine

struct MoneyListView: View {
    var body: some View {
        NavigationView {
            List {
                Text("test1")
                Text("test2")
                Text("test3")
            }
            .navigationTitle("Money List")
        }
    }
}
