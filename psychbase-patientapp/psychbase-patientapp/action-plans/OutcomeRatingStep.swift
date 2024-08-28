//
//  OutcomeRatingStep.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 14/8/2024.
//

import SwiftUI

enum Rating: CaseIterable, CustomStringConvertible {
    case notAtAll, aLittle, somewhat, mostly, aLot
    
    var description: String {
        switch self {
        case .notAtAll:
            return "Not at all"
        case .aLittle:
            return "A little"
        case .somewhat:
            return "Somewhat"
        case .mostly:
            return "Mostly"
        case .aLot:
            return "A lot"
        }
    }
}

struct OutcomeRatingStep: View {
    @Binding var formData: ActionPlanForm
    var stepNumber: Int
    var stepText: String
    @State private var selection: Rating?
    
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
            
            RadioButtonGroup(tags: Rating.allCases,
                             buttonSpacing: 30,
                             stackPadding: 10,
                             selection: $selection,
                             button: {
                isSelected, tag in
                ZStack {
                    VStack {
                        Image("radio-button")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Text(tag.description)
                            .font(
                                Font.custom("Quicksand", size: 12)
                                    .weight(.medium)
                            )
                            .foregroundColor(.black.opacity(0.25))
                    }
                    if isSelected {
                        VStack {
                            Image("selected-radio-button")
                                .resizable()
                                .frame(width: 20, height: 20)
                            Text(tag.description)
                                .font(
                                    Font.custom("Quicksand", size: 12)
                                        .weight(.medium)
                                )
                                .foregroundColor(.black.opacity(0.25))
                        }
                    }
                }
            }
            )
        }
        .frame(maxWidth: .infinity, alignment: .topLeading)
    }
}
