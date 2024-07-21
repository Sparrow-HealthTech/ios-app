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
    @State var assessmentTile  = HomeTileData(
        tileHeading: "Assigned Assessment",
        tileSubtitle: "To see how you’re progressing your psychologist needs you to complete the following assessment.",
        tilePicture: "assessments-tile",
        activityHeading: "DASS-10 Questionaire",
        activitySubtitle: "This 2 min survey measures your depression, anxiety & stress levels.",
        buttonLabel: "ToDo - This Week"
    )
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Divider()
            VStack(alignment: .leading, spacing: 16) {
                if activityTile.state == .inProgress && assessmentTile.state == .inProgress {
                    Text("Error: Activity & Assessment modules are both in-progress.")
                } else if activityTile.state == .inProgress {
                    ExerciseView()
                } else if assessmentTile.state == .inProgress {
                    AssessmentView()
                }
                else {
                    ScrollView(){
                        VStack(spacing: 20){
                            Spacer()
                            HomeTileView(tileData: $activityTile)
                            HomeTileView(tileData: $assessmentTile)
                        }
                    }
                }
            }
            .padding(.horizontal, 16)
            .frame(maxWidth: .infinity, alignment: .topLeading)
        }
        .frame(maxWidth: .infinity, alignment: .topLeading)
        .background(Color(red: 0.95, green: 0.95, blue: 0.95))
    }
}

#Preview {
    HomeView()
}
