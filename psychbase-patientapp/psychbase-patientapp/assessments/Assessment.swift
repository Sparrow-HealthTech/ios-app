//
//  AssessmentsView.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 21/7/2024.
//

import SwiftUI

struct Assessment: View {
    @Binding var path: [appPages]
    
    var body: some View {
        VStack {
            ModuleHeader(path: $path,
                             headerTitle: "DASS-10 Assessment")
            VStack(alignment: .leading, spacing: 0){
                Divider()
                VStack(alignment: .leading, spacing: 0) {
                    Doctor()
                    Questionnaire()
                }
            }
            .frame(maxWidth: .infinity, alignment: .topLeading)
            .background(Color(red: 0.95, green: 0.95, blue: 0.95))
            Spacer()
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
