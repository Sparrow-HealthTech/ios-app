//
//  ActionPlansView.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 7/7/2024.
//

import SwiftUI

struct HomeTileView: View {
    @Binding var exerciseStarted: Bool
    
    func startExercise(){
        exerciseStarted = true
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            // Heading
                Text("Assigned Action Plan")
                  .font(
                    Font.custom("Quicksand", size: 20)
                      .weight(.semibold)
                  )
                  .multilineTextAlignment(.center)
                  .foregroundColor(Color(red: 0.16, green: 0.16, blue: 0.17))
                  .frame(maxWidth: .infinity, alignment: .top)
            // Description
                Text("Your psychologist has assigned this activity to complete as part of your treatment plan.")
                  .font(
                    Font.custom("Quicksand", size: 12)
                      .weight(.medium)
                  )
                  .foregroundColor(.black.opacity(0.8))
                  .frame(maxWidth: .infinity, minHeight: 30, alignment: .topLeading)
                  .padding(10)
            // Image
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
            // Exercise Name
                Text("Thought Challenging")
                  .font(
                    Font.custom("Quicksand", size: 18)
                      .weight(.semibold)
                  )
                  .foregroundColor(Color(red: 0.16, green: 0.16, blue: 0.17))
                  .frame(maxWidth: .infinity, alignment: .topLeading)
                  .padding(.top, 15)
                  .padding(.leading, 10)
            // Exercise Description
                Text("Having an unhelpful thought? Do this 1 min exercise to challenge it and help rewire your brain!")
                  .font(
                    Font.custom("Quicksand", size: 12)
                      .weight(.medium)
                  )
                  .foregroundColor(.black.opacity(0.8))
                  .frame(maxWidth: .infinity, minHeight: 30, alignment:  .topLeading)
                  .padding([.top, .leading, .bottom], 10)
            // Button
            HStack(alignment: .center, spacing: 8) {
                Button(action: startExercise) {
                    Text("Start Exercise!")
                      .font(
                        Font.custom("Quicksand", size: 14)
                          .weight(.bold)
                      )
                      .foregroundColor(.white)
                    Image("start-button")
                        .resizable()
                        .frame(width: 16, height: 16)
                }
            }
            .padding(.leading, 16)
            .padding(.trailing, 8)
            .padding(.vertical, 8)
            .background(Color(red: 0.17, green: 0.63, blue: 0.28))

            .cornerRadius(12)
        }
        .padding(12)
        .frame(maxWidth: .infinity, alignment: .top)
        .background(.white)
        .cornerRadius(16)
        .shadow(radius: 5)
        .overlay(
          RoundedRectangle(cornerRadius: 16)
            .inset(by: 0.5)
            .stroke(Color(red: 0.84, green: 0.13, blue: 0.56), lineWidth: 1)
        )
    }
}

#Preview {
    HomeTileView(exerciseStarted: .constant(false))
}
