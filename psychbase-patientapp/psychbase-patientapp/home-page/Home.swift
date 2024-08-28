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

enum moduleType {
    case actionPlan
    case assessment
}

struct ModuleData {
    let type: moduleType
    let tileHeading: String
    let tileSubtitle: String
    let tilePicture: String
    let moduleHeading: String
    let moduleSubtitle: String
    var buttonLabel: String
    var state = moduleState.notStarted
    
    mutating func updateButtonLabel(newLabel: String) {
        buttonLabel = newLabel
    }
    
    mutating func startModule() {
        state = moduleState.inProgress
    }
}

struct Home: View {
    @Binding var path: [appPages]
    
    @State var actionPlanTile  = ModuleData(
        type: moduleType.actionPlan,
        tileHeading: "Assigned Action Plan",
        tileSubtitle: "Your psychologist has assigned this activity to complete as part of your treatment plan.",
        tilePicture: "action-plans",
        moduleHeading: "Thought Recording & Challenging",
        moduleSubtitle: "Having an unhelpful thought? Do this 1 min exercise to challenge it and help rewire your brain!",
        buttonLabel: "Start Exercise!"
    )
    
    @State var assessmentTile  = ModuleData(
        type: moduleType.assessment,
        tileHeading: "Assigned Assessment",
        tileSubtitle: "To see how you’re progressing your psychologist needs you to complete the following assessment.",
        tilePicture: "assessments-tile",
        moduleHeading: "DASS-10 Questionaire",
        moduleSubtitle: "This 2 min survey measures your depression, anxiety & stress levels.",
        buttonLabel: "ToDo - This Week"
    )
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            Divider()
            VStack(alignment: .leading, spacing: 16) {
                ScrollView(){
                    VStack(spacing: 20){
                        Spacer()
                        Module(path: $path, tileData: $actionPlanTile)
                        Module(path: $path, tileData: $assessmentTile)
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

struct HomePreview: PreviewProvider {
    @State static var path = [appPages.home]
    static var previews: some View {
        Home(path: $path)
    }
}
