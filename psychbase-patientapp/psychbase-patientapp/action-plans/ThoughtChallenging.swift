//
//  ThoughtChallenging.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 9/8/2024.
//

import SwiftUI

struct ThoughtChallenging: View {
    @Binding var path: [appPages]
    @Binding var formData: ActionPlanForm
    
    let doctorImgPath = "female-doctor-1"
    let doctorSpeechText = "Good job completing the 1st step! Only a little more to go now...\n\nMost unhelpful thoughts are a result of your brain playing silly tricks on itself.\n\nUnderstanding this and reframing your thoughts to be more helpful is key to healing."
    
    func finishChallenging(){
        path.append(.completionThoughtChallenging)
    }
    
    var body: some View {
        VStack {
            ModuleHeader(path: $path,
                         headerTitle: "Thought Challenging")
            ScrollView {
                VStack(alignment: .leading, spacing: 0){
                    Divider()
                    Doctor(imgPath: doctorImgPath, 
                           speechText: doctorSpeechText,
                           speechColor: .orange)
                    VStack {
                        VStack(alignment: .leading, spacing: 30) {
                            ThoughtTypeStep()
                                .padding(.top, 20)
                            TextFieldStep(formData: $formData,
                                          stepNumber: 5,
                                          stepText: "(Optional) What is some evidence that supports this thought being true?",
                                          sampleAnswer: "I'll fail my math exam because I've always found math difficult.")
                            TextFieldStep(formData: $formData,
                                          stepNumber: 6,
                                          stepText: "(Optional) What is some evidence against this thought?",
                                          sampleAnswer: "I will pass the exam because I studied very hard and did well on the practice tests.")
                            TextFieldStep(formData: $formData,
                                          stepNumber: 7,
                                          stepText: "(Optional) Based on this, what is a more balanced and helpful thought?",
                                          sampleAnswer: "Even though I find math challenging, I've prepared a lot for this exam so I should most likely be fine.")
                            OutcomeRatingStep(formData: $formData,
                                              stepNumber: 8,
                                              stepText: "Are you feeling better as a result of this exercise?")
                            ModuleButton(label: "Complete Exercise!",
                                         onClick: finishChallenging,
                                         buttonType: .primary)
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

struct ThoughtChallengingPreview: PreviewProvider {
    @State static var path = [appPages.home]
    @State static var formData = ActionPlanForm()
    static var previews: some View {
        ThoughtChallenging(path: $path, formData: $formData)
    }
}
