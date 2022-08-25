//
//  HistoryView.swift
//  SUITest
//
//  Created by Nikita Batrakov on 23.08.2022.
//

import SwiftUI

struct HistoryView: View {
    @Binding var showHistory: Bool
    
    @EnvironmentObject var history: HistoryStore
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Button(action: { showHistory.toggle() }) {
                Image(systemName: "xmark.circle")
            }
            .font(.title)
            .padding([.top, .trailing])
            VStack {
                Text(NSLocalizedString("History", comment: "view user activity"))
                    .font(.title)
                    .padding()
                Form {
                    ForEach(history.exerciseDays) { day in
                        Section(
                            content: ({
                                ForEach(day.exercises, id: \.self) { exercise in
                                    Text(exercise)
                                }
                            }),
                            header: ({
                                Text(day.date.formatted(as: "MMM d"))
                                    .font(.headline)
                            })
                        )
                    }
                }
            }
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView(showHistory: .constant(true))
            .environmentObject(HistoryStore())
    }
}
