//
//  Welcome.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 20/8/2024.
//

import SwiftUI

@MainActor
struct Welcome: View {
    @Binding var path: [appPages]
    @State private var displayFlash = true
    
    var body: some View {
        if displayFlash {
            WelcomeFlash()
                .task(flashScreen)
        } else {
            WelcomeAuth(path: $path)
        }
    }
    
    @Sendable private func flashScreen() async {
        try? await Task.sleep(nanoseconds: 2_000_000_000)
        displayFlash = false
    }
}
