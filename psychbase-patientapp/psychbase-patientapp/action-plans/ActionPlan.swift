//
//  ExerciseView.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 11/7/2024.
//

import SwiftUI

struct ActionPlan: View{
    @Binding var path: [appPages]
    
    let doctorImgPath = "male-doctor-1"
    let doctorSpeechText = "This exercise starts with identifying the cause & impact of your unhelpful thought.\n\nSometimes just noting down these thoughts can soften their effect on you!"
    
    var body: some View {
        VStack {
            ModuleHeader(path: $path,
                         headerTitle: "DASS-10 Assessment")
            ScrollView {
                VStack(alignment: .leading, spacing: 0){
                    Divider()
                    VStack(alignment: .leading, spacing: 0) {
                        Doctor(imgPath: doctorImgPath, speechText: doctorSpeechText)
                        SituationStep()
                        SliderStep(moodRating: 50)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .topLeading)
                .background(Color(red: 0.95, green: 0.95, blue: 0.95))
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct ActionPlanPreview: PreviewProvider {
    @State static var path = [appPages.home, appPages.actionPlan1]
    static var previews: some View {
        ActionPlan(path: $path)
    }
}
