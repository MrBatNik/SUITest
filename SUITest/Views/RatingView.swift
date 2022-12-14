//
//  RatingView.swift
//  SUITest
//
//  Created by Nikita Batrakov on 23.08.2022.
//

import SwiftUI

struct RatingView: View {
    let exerciseIndex: Int
    
    @AppStorage("ratings") private var ratings = ""
    @State private var rating = 0
    private let maximumRating = 5
    private let onColor = Color.red
    private let offColor = Color.gray
    
    var body: some View {
        HStack {
            ForEach(1..<maximumRating + 1, id: \.self) { index in
                Image(systemName: "waveform.path.ecg")
                    .foregroundColor(index > rating ? offColor : onColor)
                    .onTapGesture { updateRating(index: index) }
                    .onAppear { convertRating() }
                    .onChange(of: ratings) { _ in
                        convertRating()
                    }
            }
        }
        .font(.largeTitle)
    }
    
    init(exerciseIndex: Int) {
        self.exerciseIndex = exerciseIndex
        let desiredLength = Exercise.exercises.count
        
        if ratings.count < desiredLength {
            ratings = ratings.padding(
                toLength: desiredLength, withPad: "0", startingAt: 0
            )
        }
    }
}

extension RatingView {
    private func updateRating(index: Int) {
        rating = index
        
        let index = ratings.index(
            ratings.startIndex, offsetBy: exerciseIndex
        )
        
        ratings.replaceSubrange(index...index, with: String(rating))
    }
    
    private func convertRating() {
        let index = ratings.index(
            ratings.startIndex, offsetBy: exerciseIndex
        )
        let character = ratings[index]
        rating = character.wholeNumberValue ?? 0
    }
}

struct RatingView_Previews: PreviewProvider {
    @AppStorage("ratings") static var ratings: String?
    
    static var previews: some View {
        ratings = nil
        return RatingView(exerciseIndex: 0)
            .previewLayout(.sizeThatFits)
    }
}
