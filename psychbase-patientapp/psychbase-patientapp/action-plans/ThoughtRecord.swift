//
//  ExerciseView.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 11/7/2024.
//

import SwiftUI

struct ThoughtRecord: View{
    @Binding var path: [appPages]
    
    let doctorImgPath = "male-doctor-1"
    let doctorSpeechText = "This exercise starts with identifying the cause & impact of your unhelpful thought.\n\nSometimes just noting down these thoughts can soften their effect on you!"
    
    func submitThoughtRecord() {
        path.append(.completionThoughtRecording)
    }
    
    func progressToThoughtChallenging() {
        path.append(.actionPlan2)
    }
    
    var body: some View {
        VStack {
            ModuleHeader(path: $path,
                         headerTitle: "Thought Recording")
            ScrollView {
                VStack(alignment: .leading, spacing: 0){
                    Divider()
                    Doctor(imgPath: doctorImgPath, 
                           speechText: doctorSpeechText,
                           speechColor: .green)
                    VStack {
                        VStack(alignment: .leading, spacing: 30) {
                            SituationStep()
                                .padding(.top, 20)
                            MoodStep()
                            TextFieldStep(stepNumber: 3,
                                          stepText: "Write down this thought in as few or many words as you like.",
                                          sampleAnswer: "I think I will do badly on this exam and fail my course.")
                            VStack(alignment: .center, spacing: 10) {
                                ModuleButton(label: "Submit Thought Record",
                                             onClick: submitThoughtRecord,
                                             buttonType: .secondary)
                                ModuleButton(label: "Proceed to Thought Challenging",
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

struct ThoughtRecordPreview: PreviewProvider {
    @State static var path = [appPages.home]
    static var previews: some View {
        ThoughtRecord(path: $path)
    }
}
