//
//  SituationOptions.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 1/8/2024.
//

import SwiftUI

struct SituationOption: View {
    var imgPath: String
    var situation: String
    
    var body: some View {
        VStack(alignment: .center, spacing: 8) {
            Image(imgPath)
                .resizable()
                .frame(width: 32, height: 32)
            Text(situation)
                .font(
                    Font.custom("Quicksand", size: 14)
                        .weight(.semibold)
                )
                .multilineTextAlignment(.center)
                .foregroundColor(Color(red: 0.17, green: 0.63, blue: 0.28))
        }
        .padding(8)
        .frame(maxWidth: .infinity, alignment: .center)
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .inset(by: 0.5)
                .stroke(Color(red: 0.17, green: 0.63, blue: 0.28), lineWidth: 1)
        )
    }
}
