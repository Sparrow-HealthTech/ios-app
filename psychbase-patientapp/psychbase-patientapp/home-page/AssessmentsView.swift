//
//  AssessmentsView.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 7/7/2024.
//

import SwiftUI

struct AssessmentsView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            VStack(alignment: .leading, spacing: 0) {
                Text("Assigned Assessment")
                  .font(
                    Font.custom("Quicksand", size: 20)
                      .weight(.semibold)
                  )
                  .multilineTextAlignment(.center)
                  .foregroundColor(Color(red: 0.16, green: 0.16, blue: 0.17))
                  .frame(maxWidth: .infinity, alignment: .top)
                Text("To see how you’re progressing your psychologist needs you to complete the following assessment.")
                  .font(
                    Font.custom("Quicksand", size: 12)
                      .weight(.medium)
                  )
                  .foregroundColor(.black.opacity(0.8))
                  .frame(maxWidth: .infinity, alignment: .topLeading)
                  .padding()
                VStack(alignment: .leading, spacing: 0) {
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 338, height: 183)
                      .background(
                        Image("assessments-tile")
                          .resizable()
                          .aspectRatio(contentMode: .fill)
                          .frame(width: 338, height: 183)
                          .clipped()
                      )
                }
                .padding(0)
                .frame(maxWidth: .infinity, alignment: .topLeading)
                .cornerRadius(12)
            }
            .padding(0)
            .frame(maxWidth: .infinity, alignment: .topLeading)
        }
        .padding(12)
        .frame(maxWidth: .infinity, alignment: .top)
        .background(.white)
        .cornerRadius(16)
        .overlay(
          RoundedRectangle(cornerRadius: 16)
            .inset(by: 0.5)
            .stroke(Color(red: 0.84, green: 0.13, blue: 0.56), lineWidth: 1)
        )
    }
}

#Preview {
    AssessmentsView()
}
