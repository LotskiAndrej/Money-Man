//
//  Date+Extensions.swift
//  Money Man
//
//  Created by Andrej Lotski on 7/12/21.
//

import Foundation

extension Date {
    var formatToHours: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        return formatter.string(from: self)
    }
    
    static func from(year: Int, month: Int, day: Int, hour: Int, minute: Int) -> Date {
        var dateComponents = DateComponents()
        dateComponents.year = year
        dateComponents.month = month
        dateComponents.day = day
        dateComponents.hour = hour
        dateComponents.minute = minute
        
        guard let someDateTime = Calendar.current.date(from: dateComponents) else { return Date() }
        return someDateTime
    }
}
