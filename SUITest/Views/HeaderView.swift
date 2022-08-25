//
//  HeaderView.swift
//  SUITest
//
//  Created by Nikita Batrakov on 23.08.2022.
//

import SwiftUI

struct HeaderView: View {
    @Binding var selectedTab: Int
    let titleText: String

    var body: some View {
        VStack {
            Text(titleText)
                .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
            HStack {
                ForEach(0..<Exercise.exercises.count, id: \.self) { index in
                    let fill = index == selectedTab ? ".fill" : ""
                    Image(systemName: "\(index + 1).circle\(fill)")
                        .onTapGesture { selectedTab = index }
                }
            }
            .font(.title2)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HeaderView(selectedTab: .constant(0), titleText: "Squat")
                .previewLayout(/*@START_MENU_TOKEN@*/.sizeThatFits/*@END_MENU_TOKEN@*/)
            HeaderView(selectedTab: .constant(1), titleText: "Squat")
                .preferredColorScheme(.dark)
                .environment(\.sizeCategory, .accessibilityLarge)
                .previewLayout(/*@START_MENU_TOKEN@*/.sizeThatFits/*@END_MENU_TOKEN@*/)
        }
    }
}
