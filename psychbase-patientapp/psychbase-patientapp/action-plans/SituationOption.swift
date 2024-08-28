//
//  SituationOptions.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 1/8/2024.
//

import SwiftUI

struct SituationOption: View {
    @Binding var selectedOptions: [SituationEnum]
    @Binding var formData: ActionPlanForm
    var situation: SituationEnum
    
    @State var showOtherDialog: Bool = false
    @State var otherInput: String = ""
    
    let greenColor = Color(red: 0.17, green: 0.63, blue: 0.28)
    
    func situationClick(){
        if selectedOptions.contains(situation) {
            selectedOptions.removeAll{$0 == situation}
            formData.selectedSituations = selectedOptions.map{$0.data.title}
        } else {
            selectedOptions.append(situation)
            if situation == .other {
                showOtherDialog = true
            }
            else {
                formData.selectedSituations = selectedOptions.map{$0.data.title}
            }
        }
        print(formData.selectedSituations)
    }
    
    var body: some View {
        Button(action: situationClick) {
            if selectedOptions.contains(situation) {
                selectedOption
                    .alert("Other Situation", isPresented: $showOtherDialog) {
                        TextField("Math course", text: $otherInput)
                        Button("OK", action: {
                            formData.selectedSituations.append("Other - '\(otherInput)'")
                        })
                        Button("Cancel", role: .cancel) { }
                    }
            } else {
                option
            }
        }
    }
    
    var option: some View {
        VStack(alignment: .center, spacing: 8) {
            Image(situation.data.imgPath)
                .resizable()
                .frame(width: 32, height: 32)
            Text(situation.data.title)
                .font(
                    Font.custom("Quicksand", size: 14)
                        .weight(.semibold)
                )
                .multilineTextAlignment(.center)
                .foregroundColor(greenColor)
        }
        .padding(8)
        .frame(maxWidth: .infinity, alignment: .center)
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .inset(by: 0.5)
                .stroke(greenColor, lineWidth: 1)
        )
    }
    
    var selectedOption: some View {
        VStack(alignment: .center, spacing: 8) {
            Image("\(situation.data.imgPath)-selected")
                .resizable()
                .frame(width: 32, height: 32)
            Text(situation.data.title)
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
