//
//  TextFieldStep.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 9/8/2024.
//

import SwiftUI

struct TextFieldStep: View {
    var stepNumber: Int
    var stepText: String
    var sampleAnswer: String
    
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
            
            VStack(alignment: .center, spacing: 10) {
                Text(sampleAnswer)
                  .font(Font.custom("Quicksand", size: 16))
                  .foregroundColor(Color(red: 0.7, green: 0.7, blue: 0.7))
                  .frame(maxWidth: .infinity, alignment: .topLeading)
            }
            .padding(20)
            .frame(maxWidth: .infinity, alignment: .center)
            .background(Color(red: 0.96, green: 0.96, blue: 0.96))
            .cornerRadius(10)
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
