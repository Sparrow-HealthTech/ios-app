//
//  ExerciseView.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 11/7/2024.
//

import SwiftUI

struct ActionPlan: View{
    @Binding var path: [appPages]
    
    var body: some View {
        VStack() {
            ModuleHeader(path: $path,
                             headerTitle: "Thought Challenging")
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

struct ActionPlanPreview: PreviewProvider {
    @State static var path = [appPages.home, appPages.actionPlan1]
    static var previews: some View {
        ActionPlan(path: $path)
    }
}
