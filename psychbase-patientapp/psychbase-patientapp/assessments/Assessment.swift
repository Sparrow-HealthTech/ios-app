//
//  AssessmentsView.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 21/7/2024.
//

import SwiftUI

struct Assessment: View {
    @Binding var path: [appPages]
    
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
                        Doctor()
                        Questionnaire()
                    }
                }
                .frame(maxWidth: .infinity, alignment: .topLeading)
                .background(Color(red: 0.95, green: 0.95, blue: 0.95))
                
                // Finish Assessment
                HStack(alignment: .center, spacing: 12) {
                    Button(action: completeAssessment) {
                        Text("Finish Exercise!")
                            .font(
                                Font.custom("Quicksand", size: 16)
                                    .weight(.bold)
                            )
                            .foregroundColor(.white)
                    }
                    .padding(.vertical, 10)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color(red: 0.17, green: 0.63, blue: 0.28))
                    .cornerRadius(12)
                }
                .padding(.horizontal, 30)
                .frame(maxWidth: .infinity, alignment: .center)
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
