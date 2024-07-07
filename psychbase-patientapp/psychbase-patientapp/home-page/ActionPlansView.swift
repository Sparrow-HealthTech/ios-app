//
//  ActionPlansView.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 7/7/2024.
//

import SwiftUI

struct ActionPlansView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 16) { 
            VStack(alignment: .leading, spacing: 0) {
                Text("Assigned Action Plan")
                  .font(
                    Font.custom("Quicksand", size: 20)
                      .weight(.semibold)
                  )
                  .multilineTextAlignment(.center)
                  .foregroundColor(Color(red: 0.16, green: 0.16, blue: 0.17))
                  .frame(maxWidth: .infinity, alignment: .top)
                Text("Your psychologist has assigned this activity to complete as part of your treatment plan.")
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
                        Image("action-plans")
                          .resizable()
                          .aspectRatio(contentMode: .fill)
                          .frame(width: 338, height: 183)
                          .clipped()
                      )
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Thought Challenging")
                          .font(
                            Font.custom("Quicksand", size: 16)
                              .weight(.semibold)
                          )
                          .foregroundColor(Color(red: 0.16, green: 0.16, blue: 0.17))
                          .frame(maxWidth: .infinity, alignment: .topLeading)
                          .padding(.top, 11)
                        Text("Having an unhelpful thought? Do this 1 min exercise to challenge it and help rewire your brain!")
                          .font(
                            Font.custom("Quicksand", size: 12)
                              .weight(.medium)
                          )
                          .foregroundColor(.black.opacity(0.8))
                          .frame(maxWidth: .infinity, alignment: .topLeading)
                          .padding(.bottom, 11)
                    }
                    .padding(8)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    .background(
                      LinearGradient(
                        stops: [
                          Gradient.Stop(color: .white, location: 0.00),
                          Gradient.Stop(color: .white.opacity(0.8), location: 1.00),
                        ],
                        startPoint: UnitPoint(x: 0.5, y: 1),
                        endPoint: UnitPoint(x: 0.5, y: 0)
                      )
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
    ActionPlansView()
}
