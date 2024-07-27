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
        VStack() {
            ModuleHeaderView(path: $path,
                             headerTitle: "DASS-10 Assessment")
            Divider()
            VStack(alignment: .leading, spacing: 0) {
                Spacer()
            }
            .frame(maxWidth: .infinity, alignment: .topLeading)
            .background(Color(red: 0.95, green: 0.95, blue: 0.95))
        }
        .navigationBarBackButtonHidden(true)
    }
}
/*
#Preview {
    AssessmentView()
}
*/
