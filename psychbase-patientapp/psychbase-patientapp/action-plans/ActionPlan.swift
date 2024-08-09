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
    
    func submitThoughtRecord() {
        
    }
    
    func progressToThoughtChallenging() {
        
    }
    
    var body: some View {
        VStack {
            ModuleHeader(path: $path,
                         headerTitle: "Thought Challenging")
            ScrollView {
                VStack(alignment: .leading, spacing: 0){
                    Divider()
                    Doctor(imgPath: doctorImgPath, speechText: doctorSpeechText)
                    VStack {
                        VStack(alignment: .leading, spacing: 30) {
                            SituationStep()
                                .padding(.top, 20)
                            SliderStep(moodRating: 50)
                            TextFieldStep(stepNumber: 3,
                                          stepText: "Write down this thought in as few or many words as you like.",
                                          sampleAnswer: "I think I will do badly on this exam and fail my course.")
                            VStack(alignment: .center, spacing: 10) {
                                ModuleButton(label: "A thought record should be enough.",
                                             onClick: submitThoughtRecord,
                                             buttonType: .secondary)
                                ModuleButton(label: "Let's challenge this unhelpful thought!",
                                             onClick: progressToThoughtChallenging,
                                             buttonType: .primary)
                            }
                        }
                        .padding(.horizontal, 16)
                    }
                    .background(.white)
                    .clipShape(
                        .rect(
                            topLeadingRadius: 20,
                            bottomLeadingRadius: 0,
                            bottomTrailingRadius: 0,
                            topTrailingRadius: 20
                        )
                    )
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
