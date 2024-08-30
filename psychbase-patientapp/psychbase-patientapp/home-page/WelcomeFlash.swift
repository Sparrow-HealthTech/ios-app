//
//  WelcomeFlash.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 20/8/2024.
//

import SwiftUI

struct WelcomeFlash: View {
    var body: some View {
        VStack(alignment: .center, spacing: 30) {
            Image("sparrow-logo")
                .resizable()
                .frame(width: 200, height: 60)
                .padding(.vertical)
            VStack(alignment: .center, spacing: 10) {
                Text("Welcome to")
                    .font(Font.custom("Urbanist-Regular", size: 30))
                Text("PsychBase")
                    .font(Font.custom("Urbanist-Bold", size: 50))
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            Image("happy-brown-girl")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity,
               alignment: .bottom)
        .background(Color(red: 1, green: 0.9, blue: 0.6))
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    WelcomeFlash()
}
