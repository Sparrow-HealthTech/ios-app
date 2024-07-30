//
//  AssessmentQuestionView.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 30/7/2024.
//

import SwiftUI


struct Questionnaire: View {
    
    var body: some View {
        LazyVStack(alignment: .leading, spacing: 10) {
            DASSQuestion(questionNumber: 1, questionText: "I felt I was close to panic", questionImg: "dass-q1")
            DASSQuestion(questionNumber: 2, questionText: "I found it difficult to work up the initiative to do things", questionImg: "dass-q2")
            DASSQuestion(questionNumber: 3, questionText: "I felt down hearted and blue", questionImg: "dass-q3")
            DASSQuestion(questionNumber: 4, questionText: "I was intolerant of anything that kept me from getting on with what I was doing", questionImg: "dass-q4")
            DASSQuestion(questionNumber: 5, questionText: "I felt that I had nothing to look forward to", questionImg: "dass-q5")
            DASSQuestion(questionNumber: 6, questionText: "I felt scared without any good reason", questionImg: "dass-q6")
            DASSQuestion(questionNumber: 7, questionText: "I tended to over react to situations", questionImg: "dass-q7")
            DASSQuestion(questionNumber: 8, questionText: "I was worried about situations in which I might panic and make a fool of myself", questionImg: "dass-q8")
            DASSQuestion(questionNumber: 9, questionText: "I found it difficult to relax", questionImg: "dass-q9")
            DASSQuestion(questionNumber: 10, questionText: "I couldn’t seem to experience any positive feelings at all", questionImg: "dass-q10")
            DASSQuestion(questionNumber: 11, questionText: "I felt annoyed by people that criticised my drinking/drug use", questionImg: "dass-q11")
            DASSQuestion(questionNumber: 12, questionText: "I have thoughts of ending my life", questionImg: "dass-q12")
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
