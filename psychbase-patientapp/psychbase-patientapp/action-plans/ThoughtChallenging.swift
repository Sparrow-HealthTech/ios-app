//
//  ThoughtChallenging.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 9/8/2024.
//

import SwiftUI

struct ThoughtChallenging: View {
    @Binding var path: [appPages]
    
    let doctorImgPath = "female-doctor-1"
    let doctorSpeechText = "Good job completing the 1st step! Only a little more to go now...\n\nMost unhelpful thoughts are a result of your brain playing silly tricks on itself.\n\nUnderstanding this and reframing your thoughts to be more helpful is key to healing."
    
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
    @State static var path = [appPages.home,
                              appPages.actionPlan1, 
                              appPages.actionPlan2]
    static var previews: some View {
        ThoughtChallenging(path: $path)
    }
}
