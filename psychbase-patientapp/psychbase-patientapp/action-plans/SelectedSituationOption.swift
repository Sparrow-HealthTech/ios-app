//
//  SelectedSituationOption.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 9/8/2024.
//

import SwiftUI

struct SelectedSituationOption: View {
    var imgPath: String
    var situation: String
    
    var body: some View {
        VStack(alignment: .center, spacing: 8) {
            Image("\(imgPath)-selected")
                .resizable()
                .frame(width: 32, height: 32)
            Text(situation)
                .font(
                    Font.custom("Quicksand", size: 14)
                        .weight(.semibold)
                )
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
        }
        .padding(8)
        .frame(maxWidth: .infinity, alignment: .center)
        .background(Color(red: 0.17, green: 0.63, blue: 0.28))
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .inset(by: 0.5)
                .stroke(.white, lineWidth: 1)
        )
    }
}
