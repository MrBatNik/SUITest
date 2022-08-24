//
//  Date + Extension.swift
//  SUITest
//
//  Created by Nikita Batrakov on 23.08.2022.
//

import Foundation

extension Date {
        
    /// Format a date using the specified format.
    ///   - parameters:
    ///     - format: A date pattern string like "MM dd".
    func formatted(as format: String) -> String {
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = format
        
        return dateFormatter.string(from: self)
    }
    
}
