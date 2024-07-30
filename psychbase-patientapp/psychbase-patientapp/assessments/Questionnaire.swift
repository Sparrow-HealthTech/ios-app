//
//  AssessmentQuestionView.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 30/7/2024.
//

import SwiftUI

enum Option: CaseIterable, CustomStringConvertible {
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
            return "Almost\n Always"
        }
    }
}

struct Questionnaire: View {
    @State private var selection: Option?
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            DASSQuestion()
            RadioButtonGroup(tags: Option.allCases,
                             selection: $selection,
                             button: { isSelected in
                ZStack {
                    Image("radio-button")
                        .resizable()
                        .frame(width: 30, height: 30)
                    if isSelected {
                        Image("selected-radio-button")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                }
            },
                             label: { tag in
                Text(tag.description)
                    .font(
                        Font.custom("Quicksand", size: 14)
                            .weight(.medium)
                    )
                    .foregroundColor(.black.opacity(0.25))
            })
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

#Preview {
    Questionnaire()
}
