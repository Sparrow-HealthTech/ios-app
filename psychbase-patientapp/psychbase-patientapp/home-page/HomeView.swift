//
//  HomeView.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 7/7/2024.
//

import SwiftUI

enum moduleState {
    case notStarted
    case inProgress
}

struct HomeTileData {
    let tileHeading: String
    let tileSubtitle: String
    let tilePicture: String
    let activityHeading: String
    let activitySubtitle: String
    var buttonLabel: String
    var state = moduleState.notStarted
    
    mutating func updateButtonLabel(newLabel: String) {
        buttonLabel = newLabel
    }
    
    mutating func startModule() {
        state = moduleState.inProgress
    }
}

struct HomeView: View {
    @State var activityTile  = HomeTileData(
        tileHeading: "Assigned Action Plan",
        tileSubtitle: "Your psychologist has assigned this activity to complete as part of your treatment plan.",
        tilePicture: "action-plans",
        activityHeading: "Thought Challenging",
        activitySubtitle: "Having an unhelpful thought? Do this 1 min exercise to challenge it and help rewire your brain!",
        buttonLabel: "Start Exercise!"
    )
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            if activityTile.state == .inProgress {
                ExerciseView()
            }
            else {
                HomeTileView(tileData: $activityTile)
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 0)
        .frame(maxWidth: .infinity, alignment: .topLeading)
    }
}
