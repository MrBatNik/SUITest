//
//  Exercise + Extension.swift
//  SUITest
//
//  Created by Nikita Batrakov on 24.08.2022.
//

import Foundation

extension Exercise {
    
    static let exercises = [
        Exercise(
            exerciseName: String(describing: ExerciseEnum.squat),
            videoName: "squat"
        ),
        Exercise(
            exerciseName: String(describing: ExerciseEnum.stepUp),
            videoName: "step-up"
        ),
        Exercise(
            exerciseName: String(describing: ExerciseEnum.burpee),
            videoName: "burpee"
        ),
        Exercise(
            exerciseName: String(describing: ExerciseEnum.sunSalute),
            videoName: "sun-salute"
        )
    ]
    
}
