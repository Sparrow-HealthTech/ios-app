//
//  ThoughtTypeStep.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 13/8/2024.
//

import SwiftUI

struct ThoughtType: Identifiable {
    let id = UUID()
    var typeImgPath: String
    var typeTitle: String
    var typeDescription: String
}

struct ThoughtTypeStep: View {
    @Binding var formData: ActionPlanForm
    @State var selectedDistortions: [String] = []
    
    let stepNumber: Int = 4
    let stepText: String = "What type of unhelpful thought did you have?"
    let thoughtTypes: [ThoughtType] = [
        ThoughtType(typeImgPath: "black-or-white-thinking",
                    typeTitle: "Black/White Thinking",
                    typeDescription: "Thinking something is a complete failure if it’s not a total success."),
        ThoughtType(typeImgPath: "fortune-telling",
                    typeTitle: "Fortune Telling",
                    typeDescription: "Thinking something awful will happen in the future."),
        ThoughtType(typeImgPath: "catastrophizing",
                    typeTitle: "Catastrophizing",
                    typeDescription: "Thinking something is far worse than it actually is in reality."),
        ThoughtType(typeImgPath: "disqualifying-the-positive",
                    typeTitle: "Disqualifying the Positive",
                    typeDescription: "Thinking that your positive experiences and attributes don't count."),
        ThoughtType(typeImgPath: "labelling",
                    typeTitle: "Labelling",
                    typeDescription: "Thinking that a mistake or a failure defines you."),
        ThoughtType(typeImgPath: "should-statements",
                    typeTitle: "Should Statements",
                    typeDescription: "Thinking that you 'should' or 'must' do something."),
        ThoughtType(typeImgPath: "emotional-reasoning",
                    typeTitle: "Emotional Reasoning",
                    typeDescription: "Thinking something is a complete failure if it’s not a total success."),
        ThoughtType(typeImgPath: "mind-reading",
                    typeTitle: "Mind Reading",
                    typeDescription: "Thinking that someone is reacting negatively to you without evidence."),
        ThoughtType(typeImgPath: "filtering",
                    typeTitle: "Filtering",
                    typeDescription: "Thinking that a single negative event or detail outweighs everything else.")]
    
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
            
            VStack {
                ForEach(thoughtTypes) {thoughtType in
                    ThoughtTypeOption(formData: $formData,
                                      selectedDistortions: $selectedDistortions,
                                      typeImgPath: thoughtType.typeImgPath,
                                      typeTitle:  thoughtType.typeTitle,
                                      typeDescription:  thoughtType.typeDescription)
                }
            }
        }
        .frame(maxWidth: .infinity, alignment: .topLeading)
    }
}
