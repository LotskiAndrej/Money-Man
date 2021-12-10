//
//  MonthlyDetailsView.swift
//  Money Man
//
//  Created by Andrej Lotski on 8/12/21.
//

import SwiftUI

struct MonthlyDetailsView: View {
    let month: Month
    let year: Year
    
    var body: some View {
        List {
            Section(header: Text("\(month.title) \(year.title)")) {
                ForEach(month.entries) { entry in
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
        .navigationBarTitleDisplayMode(.inline)
    }
}
