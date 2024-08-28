//
//  ThoughtChallengingExercise.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 1/8/2024.
//

import SwiftUI

struct Situation {
    let title: String
    let imgPath: String
}

enum SituationEnum: CaseIterable {
    case work, study, family, friends, relationships, other
    
    var situation: Situation {
        switch self {
        case .work:
            return Situation(title: "Work", imgPath: "work-situation")
        case .study:
            return Situation(title: "Study", imgPath: "study-situation")
        case .family:
            return Situation(title: "Family", imgPath: "family-situation")
        case .friends:
            return Situation(title: "Friends", imgPath: "friends-situation")
        case .relationships:
            return Situation(title: "Relationships", imgPath: "relationships-situation")
        case .other:
            return Situation(title: "Other", imgPath: "other-situation")
        }
    }
}

struct SituationStep: View {
    let stepNumber: Int = 1
    let stepText: String = "What situation is this unhelpful thought related to?"
    let situations: [SituationEnum] = [.work, .study, .family, .friends, .relationships, .other]
    
    @State private var selection: SituationEnum?
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack(alignment: .center, spacing: 12) {
                HStack(alignment: .center, spacing: 8) {
                    Text(String(stepNumber))
                        .font(
                            Font.custom("Quicksand", size: 14)
                                .weight(.bold)
                        )
                        .foregroundColor(Color(red: 0.17, green: 0.63, blue: 0.28))
                }
                .padding(8)
                .frame(width: 32, height: 32, alignment: .center)
                .cornerRadius(100)
                .overlay(
                    RoundedRectangle(cornerRadius: 100)
                        .inset(by: 0.5)
                        .stroke(Color(red: 0.17, green: 0.63, blue: 0.28), lineWidth: 1))
                Text(stepText)
                    .font(
                        Font.custom("Quicksand", size: 16)
                            .weight(.semibold))
                    .foregroundColor(Color(red: 0.16, green: 0.16, blue: 0.17))
                    .frame(maxWidth: .infinity, alignment: .topLeading)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            HStack {
                ForEach(0...2, id: \.self) {i in
                    SituationOption(imgPath: situations[i].situation.imgPath,
                                    situation: situations[i].situation.title)
                }
            }
            HStack {
                ForEach(3...5, id: \.self) {i in
                    SituationOption(imgPath: situations[i].situation.imgPath,
                                    situation: situations[i].situation.title)
                }
            }
        }
        .frame(maxWidth: .infinity, alignment: .topLeading)
    }
}
