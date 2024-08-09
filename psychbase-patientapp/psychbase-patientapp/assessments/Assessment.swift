//
//  AssessmentsView.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 21/7/2024.
//

import SwiftUI

struct Assessment: View {
    @Binding var path: [appPages]
    
    let doctorImgPath = "male-doctor-1"
    let doctorSpeechText = "This assessment gives your psychologist valuable information to guide your therapy.\n\nIt shouldn’t take more than 2 mins to complete. \n\nDon’t overthink your answers. Trust your intuition!"
    
    func completeAssessment() {
        path.removeLast()
    }
    
    var body: some View {
        VStack {
            ModuleHeader(path: $path,
                         headerTitle: "DASS-10 Assessment")
            ScrollView {
                VStack(alignment: .leading, spacing: 0){
                    Divider()
                    VStack(alignment: .leading, spacing: 0) {
                        Doctor(imgPath: doctorImgPath, 
                               speechText: doctorSpeechText,
                               speechColor: .green
                        )
                        Questionnaire()
                    }
                }
                .frame(maxWidth: .infinity, alignment: .topLeading)
                .background(Color(red: 0.95, green: 0.95, blue: 0.95))
                
                ModuleButton(label: "Finish Assessment!",
                             onClick: completeAssessment,
                             buttonType: .primary)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct AssessmentPreview: PreviewProvider {
    @State static var path = [appPages.home, appPages.assessment1]
    static var previews: some View {
        Assessment(path: $path)
    }
}
