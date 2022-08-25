//
//  ContentView.swift
//  SUITest
//
//  Created by Nikita Batrakov on 23.08.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 9
    
    var body: some View {
        TabView(selection: $selectedTab) {
            WelcomeView(selectedTab: $selectedTab)
                .tag(9)
            ForEach(0..<Exercise.exercises.count, id: \.self) { index in
                ExerciseView(selectedTab: $selectedTab, index: index)
                    .tag(index)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
