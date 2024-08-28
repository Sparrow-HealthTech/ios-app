//
//  AssessmentsView.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 21/7/2024.
//

import SwiftUI

struct Assessment: View {
    @Binding var path: [appPages]
    @Binding var formData: AssessmentForm
    
    let doctorImgPath = "male-doctor-1"
    let doctorSpeechText = "This assessment gives your psychologist valuable information to guide your therapy.\n\nIt shouldn’t take more than 2 mins to complete. \n\nDon’t overthink your answers. Trust your intuition!"
    
    @State var isMandatoryFieldsEmpty: Bool = false
    
    func completeAssessment() {
        print(formData)
        if formData.isAnyAnswerEmpty() {
            isMandatoryFieldsEmpty = true
        } else {
            path.append(.completionAssessment)
        }
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
                        Questionnaire(formData: $formData)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .topLeading)
                .background(Color(red: 0.95, green: 0.95, blue: 0.95))
                .padding(.bottom, 0)
                
                HStack {
                    Text("**Note:** If you are thinking about self-harm, it’s important that you talk to someone about what you’re going through. \n\nPlease contact your psychologist or refer to our resources page for information on support services.")
                }
                .frame(maxWidth: .infinity, alignment: .topLeading)
                .foregroundColor(.red)
                .padding()
                .padding(.top, 0)
                
                ModuleButton(label: "Finish Assessment!",
                             onClick: completeAssessment,
                             buttonType: .primary)
            }
        }
        .navigationBarBackButtonHidden(true)
        .alert(isPresented: $isMandatoryFieldsEmpty){
            Alert(title: Text("Incomplete Questionnaire"),
                  message: Text("Please answer all questions in this assessment."),
                  dismissButton: .default(Text("Got it!"))
            )
        }
    }
}

struct AssessmentPreview: PreviewProvider {
    @State static var path = [appPages.home, appPages.assessment1]
    @State static var formData = AssessmentForm()
    static var previews: some View {
        Assessment(path: $path, formData: $formData)
    }
}
