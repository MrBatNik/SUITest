//
//  HistoryStore.swift
//  SUITest
//
//  Created by Nikita Batrakov on 24.08.2022.
//

import Foundation

struct ExerciseDay: Identifiable {
    let id = UUID()
    let date: Date
    var exercises: [String] = []
}

struct HistoryStore {
    var exerciseDays: [ExerciseDay] = []

    init() {
        #if DEBUG
        createDevData()
        #endif
    }
}
