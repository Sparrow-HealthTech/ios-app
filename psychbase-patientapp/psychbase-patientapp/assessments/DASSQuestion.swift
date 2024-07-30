//
//  QuestionView.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 30/7/2024.
//

import SwiftUI

struct DASSQuestion: View {
    var questionNumber: Int = 1
    var questionText: String = "I felt I was close to panic"
    var questionImg: String = "dass-q1"
    
    var body: some View {
        VStack() {
            HStack(alignment: .center, spacing: 12) {
                HStack(alignment: .center, spacing: 8) {
                    Text(String(questionNumber))
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
                Text(questionText)
                    .font(
                        Font.custom("Quicksand", size: 16)
                            .weight(.semibold))
                    .foregroundColor(Color(red: 0.16, green: 0.16, blue: 0.17))
                    .frame(maxWidth: .infinity, alignment: .topLeading)
            }
            .padding(0)
            .frame(maxWidth: .infinity, alignment: .leading)
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 211.93613, height: 212.36)
              .background(
                Image(questionImg)
                  .resizable()
                  .aspectRatio(contentMode: .fill)
                  .frame(width: 211.93612670898438, height: 212.36000061035156)
                  .clipped()
              )
        }
    }
}

#Preview {
    DASSQuestion()
}
