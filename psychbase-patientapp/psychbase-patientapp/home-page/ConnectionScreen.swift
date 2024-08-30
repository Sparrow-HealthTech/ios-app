//
//  ConnectionScreen.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 20/8/2024.
//

import SwiftUI

struct ConnectionScreen: View {
    @Binding var currentPage: onboardingPages
    @State private var onboardingKey = ""
    
    func submitOnboardingKey(){
        currentPage = .setPINPage
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 100) {
            Text("Let’s connect with your therapist")
                .font(
                    Font.custom("Urbanist", size: 32)
                        .weight(.bold)
                )
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
            
            VStack(spacing: 20) {
                Text("Enter the connection key provided by your therapist:")
                    .font(
                        Font.custom("Urbanist", size: 16)
                            .weight(.semibold)
                    )
                    .foregroundColor(.white)
                
                Group {
                    TextField("", text: $onboardingKey)
                        .font(Font.custom("Quicksand-Regular", size: 16))
                        .foregroundColor(.black)
                        .lineLimit(1)
                        .padding(5)
                        .onSubmit(submitOnboardingKey)
                }
                .foregroundColor(.clear)
                .background(.white)
                .cornerRadius(5)
            }
            .padding(.horizontal)
            .frame(maxWidth: 300, alignment: .topLeading)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity,
               alignment: .center)
    }
}

struct ConnectionScreenPreview: PreviewProvider {
    @State static var currentPage = onboardingPages.connectionPage
    static var previews: some View {
        ConnectionScreen(currentPage: $currentPage)
    }
}
