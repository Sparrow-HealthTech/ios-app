//
//  AssessmentQuestionView.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 30/7/2024.
//

import SwiftUI


struct Questionnaire: View {
    @Binding var formData: AssessmentForm
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            ForEach(formData.DASSQuestionnaireData){ question in
                DASSQuestion(questionData: question)
            }
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
