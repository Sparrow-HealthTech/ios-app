//
//  DoctorView.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 30/7/2024.
//

import SwiftUI

enum SpeechColor {
    case green, orange
}

struct Doctor: View {
    var imgPath: String
    var speechText: String
    var speechColor: SpeechColor
    
    private var txtColor: Color {
        if speechColor == .green {
            return Color(red: 0.17, green: 0.63, blue: 0.28)
        } else if speechColor == .orange {
            return Color(red: 1, green: 0.53, blue: 0.04)
        } else {
            return Color(.black) // Raise error
        }
    }
    private var bubbleColor: Color { txtColor.opacity(0.12) }
    
    var body: some View {
        HStack(alignment: .top, spacing: 0) {
            Image(imgPath)
                .resizable()
                .frame(width: 150, height: 250)
            Image("chat-bubble-polygon")
                .renderingMode(.template)
                .resizable()
                .frame(width: 20, height: 16)
                .padding(.top, 20)
                .foregroundColor(txtColor)
            HStack(alignment: .center, spacing: 10) {
                Text(speechText)
                    .font(
                        Font.custom("Quicksand", size: 14)
                            .weight(.medium))
                    .foregroundColor(txtColor)
            }
            .padding(8)
            .frame(maxWidth: .infinity, alignment: .center)
            .background(bubbleColor)
            .cornerRadius(12)
        }
        .padding([.horizontal, .top], 20)
        .padding(.bottom, 0)
        .frame(maxWidth: .infinity, alignment: .topLeading)
    }
}
