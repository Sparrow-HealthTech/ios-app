//
//  MoodSubgrid.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 13/8/2024.
//

import SwiftUI

struct MoodSubgrid: View {
    @Binding var selectedMood: String
    var gradient: LinearGradient
    var emotions: [String]
    
    let fontSize: CGFloat = 12
    let reducedOpacity: CGFloat = 0.45
    
    func leftCellClick() {
        selectedMood = emotions[0]
    }
    func midCellClick() {
        selectedMood = emotions[1]
    }
    func rightCellClick() {
        selectedMood = emotions[2]
    }
    
    var body: some View {
        HStack(alignment: .top, spacing: 0) {
            // Left Cell
            VStack(alignment: .leading, spacing: 0) {
                Button(action: leftCellClick) {
                    Text(emotions[0])
                        .foregroundStyle(Color(.white))
                        .font(
                            Font.custom("Quicksand", size: fontSize)
                        )
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .overlay(
                Rectangle()
                    .stroke(.white, lineWidth: 1)
            )
            .background(gradient)
            .if(selectedMood != emotions[0] && selectedMood != ""){
                view in view.opacity(reducedOpacity)
            }
            
            // Mid Cell
            VStack(alignment: .center, spacing: 0) {
                Button(action: midCellClick) {
                    Text(emotions[1])
                        .foregroundStyle(Color(.white))
                        .font(
                            Font.custom("Quicksand", size: fontSize)
                        )
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .overlay(
                Rectangle()
                    .stroke(.white, lineWidth: 1)
            )
            .background(gradient)
            .if(selectedMood != emotions[1] && selectedMood != ""){
                view in view.opacity(reducedOpacity)
            }
            
            // Right Cell
            VStack(alignment: .center, spacing: 0) {
                Button(action: rightCellClick) {
                    Text(emotions[2])
                        .foregroundStyle(Color(.white))
                        .font(
                            Font.custom("Quicksand", size: fontSize)
                        )
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .overlay(
                Rectangle()
                    .stroke(.white, lineWidth: 1)
            )
            .background(gradient)
            .if(selectedMood != emotions[2] && selectedMood != ""){
                view in view.opacity(reducedOpacity)
            }
        }
        .padding(0)
    }
}
