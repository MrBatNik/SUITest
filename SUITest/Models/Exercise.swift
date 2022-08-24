//
//  Exercise.swift
//  SUITest
//
//  Created by Nikita Batrakov on 24.08.2022.
//

import Foundation

struct Exercise {
    let exerciseName: String
    let videoName: String
    
    enum ExerciseEnum: CustomStringConvertible {
        case squat
        case stepUp
        case burpee
        case sunSalute
        
        var description: String {
            switch self {
                case .squat:
                    return NSLocalizedString("Squat", comment: "exercise")
                case .stepUp:
                    return NSLocalizedString("Step Up", comment: "exercise")
                case .burpee:
                    return NSLocalizedString("Burpee", comment: "exercise")
                case .sunSalute:
                    return NSLocalizedString("Sun Salute", comment: "yoga stretch")
            }
        }
    }
}
