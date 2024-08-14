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

struct ThoughtTypeSet: Identifiable {
    let id = UUID()
    var thoughtTypes: [ThoughtType]
}

struct ThoughtTypeStep: View {
    let stepNumber: Int = 4
    let stepText: String = "What type of unhelpful thought did you have?"
    let thoughtTypes: [ThoughtTypeSet] = [
        ThoughtTypeSet(thoughtTypes:
                        [ThoughtType(typeImgPath: "black-or-white-thinking",
                                     typeTitle: "Black/White Thinking",
                                     typeDescription: "Thinking something is a complete failure if it’s not a total success. Is it okay if it's just good enough and not perfect?"),
                         ThoughtType(typeImgPath: "fortune-telling",
                                     typeTitle: "Fortune Telling",
                                     typeDescription: "Thinking something awful will happen in the future. Is there really a good reason to think that things won't turn out well?"),
                         ThoughtType(typeImgPath: "catastrophizing",
                                     typeTitle: "Catastrophizing",
                                     typeDescription: "Thinking something is far worse than it actually is in reality. Is your situation really as bad as it seems?")]),
        ThoughtTypeSet(thoughtTypes:
                        [ThoughtType(typeImgPath: "black-or-white-thinking",
                                     typeTitle: "Disqualifying the Positives",
                                     typeDescription: "Thinking that your positive experiences and attributes don't actually count. Do the good things not really matter?"),
                         ThoughtType(typeImgPath: "fortune-telling",
                                     typeTitle: "Labelling",
                                     typeDescription: "Thinking that a mistake or a failure defines you. Surely you're so much more than the mistakes you've made?"),
                         ThoughtType(typeImgPath: "catastrophizing",
                                     typeTitle: "Should Statements",
                                     typeDescription: "Thinking that you 'should' or 'must' do something and being harsh on yourself. Is this really a healthy way to treat yourself?")]),
        ThoughtTypeSet(thoughtTypes:
                        [ThoughtType(typeImgPath: "black-or-white-thinking",
                                     typeTitle: "Emotional Reasoning",
                                     typeDescription: "Thinking something is a complete failure if it’s not a total success. Does everything always have to be perfect?"),
                         ThoughtType(typeImgPath: "fortune-telling",
                                     typeTitle: "Mind Reading",
                                     typeDescription: "Thinking that someone is seeing you in a bad way without any evidence. How do you know what's happening inside their head?"),
                         ThoughtType(typeImgPath: "catastrophizing",
                                     typeTitle: "Filtering",
                                     typeDescription: "Thinking that a single negative event or detail outweighs everything else. Would a more balanced perspective be better?")])
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
            .frame(maxWidth: .infinity, alignment: .leading)
            
            ScrollView(.horizontal, showsIndicators: true) {
                HStack {
                    ForEach(thoughtTypes){thoughtTypeSet in
                        VStack {
                            ThoughtTypeOption(typeImgPath: thoughtTypeSet.thoughtTypes[0].typeImgPath,
                                              typeTitle:  thoughtTypeSet.thoughtTypes[0].typeTitle,
                                              typeDescription:  thoughtTypeSet.thoughtTypes[0].typeDescription)
                            ThoughtTypeOption(typeImgPath: thoughtTypeSet.thoughtTypes[1].typeImgPath,
                                              typeTitle:  thoughtTypeSet.thoughtTypes[1].typeTitle,
                                              typeDescription:  thoughtTypeSet.thoughtTypes[1].typeDescription)
                            ThoughtTypeOption(typeImgPath: thoughtTypeSet.thoughtTypes[2].typeImgPath,
                                              typeTitle:  thoughtTypeSet.thoughtTypes[2].typeTitle,
                                              typeDescription:  thoughtTypeSet.thoughtTypes[2].typeDescription)
                        }
                    }
                }
                .scrollTargetLayout()
            }
            .scrollTargetBehavior(.viewAligned)
        }
        .frame(maxWidth: .infinity, alignment: .topLeading)
    }
}
