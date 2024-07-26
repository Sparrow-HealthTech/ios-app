//
//  AssessmentsView.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 21/7/2024.
//

import SwiftUI

struct AssessmentView: View {
    var body: some View {
        ModuleHeaderView()
        Divider()
        VStack(alignment: .leading, spacing: 0) {
            Spacer()
        }
        .frame(maxWidth: .infinity, alignment: .topLeading)
        .background(Color(red: 0.95, green: 0.95, blue: 0.95))
    }
}

#Preview {
    AssessmentView()
}
