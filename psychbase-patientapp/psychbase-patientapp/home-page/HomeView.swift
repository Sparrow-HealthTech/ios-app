//
//  HomeView.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 7/7/2024.
//

import SwiftUI

struct HomeView: View {
    @State var exerciseStarted: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            if exerciseStarted {
                ExerciseView()
            }
            else {
                HomeTileView(exerciseStarted: $exerciseStarted)
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 0)
        .frame(maxWidth: .infinity, alignment: .topLeading)
    }
}

#Preview {
    HomeView()
}
