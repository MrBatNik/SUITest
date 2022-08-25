//
//  Date + Extension.swift
//  SUITest
//
//  Created by Nikita Batrakov on 23.08.2022.
//

import Foundation

extension Date {
    
    var yearMonthDay: String {
        self.formatted(as: "yyyy MM dd")
    }
    
    var dayName: String {
        self.formatted(as: "EEEE")
    }
        
    /// Format a date using the specified format.
    ///   - parameters:
    ///     - format: A date pattern string like "MM dd".
    func formatted(as format: String) -> String {
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = format
        
        return dateFormatter.string(from: self)
    }
    
    /// Check another date is the same year, month and day.
    ///   - parameters:
    ///     - day: The other date.
    func isSameDay(as day: Date) -> Bool {
        return self.yearMonthDay == day.yearMonthDay
    }
    
}
