//
//  MoodSubgrid.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 13/8/2024.
//

import SwiftUI

struct MoodTile: View {
    @Binding var formData: ActionPlanForm
    @Binding var selectedMoods: [String]
    var gradient: LinearGradient
    var mood: String
    
    let fontSize: CGFloat = 12
    let reducedOpacity: CGFloat = 0.45
    
    func tileClick() {
        if selectedMoods.contains(mood) {
            selectedMoods.removeAll{$0 == mood}
        } else {
            selectedMoods.append(mood)
        }
        formData.selectedMoods = selectedMoods
    }
    
    var body: some View {
        Button(action: tileClick) {
            VStack(alignment: .leading, spacing: 0) {
                Text(mood)
                    .foregroundStyle(Color(.white))
                    .font(
                        Font.custom("Quicksand", size: fontSize)
                    )
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .overlay(
                Rectangle()
                    .stroke(.white, lineWidth: 1)
            )
            .background(gradient)
            .if(!selectedMoods.contains(mood) && !selectedMoods.isEmpty){
                view in view.opacity(reducedOpacity)
            }
        }
    }
}
