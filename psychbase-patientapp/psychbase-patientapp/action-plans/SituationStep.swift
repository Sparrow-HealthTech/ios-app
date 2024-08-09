//
//  ThoughtChallengingExercise.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 1/8/2024.
//

import SwiftUI

struct Situation: Identifiable {
    let title: String
    let imgPath: String
    var id: String { title }
}


struct SituationStep: View {
    let stepNumber: Int = 1
    let stepText: String = "What situation is this unhelpful thought related to?"
    let situations: [Situation] = [
        Situation(title: "Work", imgPath: "work-situation"),
        Situation(title: "Study", imgPath: "study-situation"),
        Situation(title: "Family", imgPath: "family-situation"),
        Situation(title: "Friends", imgPath: "friends-situation"),
        Situation(title: "Other", imgPath: "other-situation"),
    ]
    
    
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
            .padding(0)
            .padding(.bottom, 10)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            HStack(alignment: .top, spacing: 8) {
                ForEach(situations) { situation in
                    SituationOption(imgPath: situation.imgPath,
                                    situation: situation.title)
                }
            }
            .padding(0)
            .frame(maxWidth: .infinity, alignment: .topLeading)
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 20)
        .frame(maxWidth: .infinity, alignment: .topLeading)
        .background(.white)
        .clipShape(
            .rect(
                topLeadingRadius: 20,
                bottomLeadingRadius: 0,
                bottomTrailingRadius: 0,
                topTrailingRadius: 20
            )
        )
    }
}
