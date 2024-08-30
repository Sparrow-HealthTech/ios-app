//
//  QuestionView.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 30/7/2024.
//

import SwiftUI

enum DASSOption: CaseIterable, CustomStringConvertible {
    case never, sometimes, often, almostAlways
    
    var description: String {
        switch self {
        case .never:
            return "Never"
        case .sometimes:
            return "Sometimes"
        case .often:
            return "Often"
        case .almostAlways:
            return "Almost Always"
        }
    }
}

struct DASSQuestion: View {
    var questionData: DASSQuestionData
    @State private var selection: DASSOption?
    
    var body: some View {
        VStack() {
            HStack(alignment: .center, spacing: 12) {
                HStack(alignment: .center, spacing: 8) {
                    Text(String(questionData.questionNumber))
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
                Text(questionData.questionText)
                    .font(
                        Font.custom("Quicksand", size: 16)
                            .weight(.semibold))
                    .foregroundColor(Color(red: 0.16, green: 0.16, blue: 0.17))
                    .frame(maxWidth: .infinity, alignment: .topLeading)
            }
            .padding(0)
            .padding(.bottom, 10)
            .frame(maxWidth: .infinity, alignment: .leading)
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 211.93613, height: 212.36)
                .background(
                    Image(questionData.questionImg)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 211.93612670898438, height: 212.36000061035156)
                        .clipped()
                )
            RadioButtonGroup(tags: DASSOption.allCases,
                             buttonSpacing: 40,
                             stackPadding: 5,
                             selection: $selection,
                             button: {
                isSelected, tag in
                ZStack {
                    VStack {
                        Image("radio-button")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text(tag.description)
                            .font(
                                Font.custom("Quicksand", size: 14)
                                    .weight(.medium)
                            )
                            .foregroundColor(.black.opacity(0.25))
                    }
                    if isSelected {
                        VStack {
                            Image("selected-radio-button")
                                .resizable()
                                .frame(width: 30, height: 30)
                            Text(tag.description)
                                .font(
                                    Font.custom("Quicksand", size: 14)
                                        .weight(.medium)
                                )
                                .foregroundColor(.black.opacity(0.25))
                        }
                    }
                }
            }
            )
            .onChange(of: selection){
                questionData.answer = (selection?.description ?? "Error in line 104 - DASSQuestion.swift")
            }
        }
    }
}
