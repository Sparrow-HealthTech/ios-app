//
//  AssessmentsView.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 21/7/2024.
//

import SwiftUI

struct AssessmentView: View {
    @Binding var path: [appPages]
    
    var body: some View {
        VStack {
            ModuleHeaderView(path: $path,
                             headerTitle: "DASS-10 Assessment")
            VStack(alignment: .leading, spacing: 0){
                Divider()
                VStack(alignment: .leading, spacing: 0) {
                    DoctorView()
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
        AssessmentView(path: $path)
    }
}
