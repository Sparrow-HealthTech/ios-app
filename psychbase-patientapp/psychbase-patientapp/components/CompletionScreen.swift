//
//  CompletionScreen.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 15/8/2024.
//

import SwiftUI

struct CompletionScreen: View {
    @Binding var path: [appPages]
    
    var screenHeading: String
    var screenDescription: String
    var screenImg: String
    var screenButtonLabel: String
    
    func buttonClick(){
        path.removeAll()
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            // Heading
            Text(screenHeading)
                .font(
                    Font.custom("Quicksand", size: 20)
                        .weight(.bold)
                )
                .multilineTextAlignment(.center)
                .foregroundColor(Color(red: 0.17, green: 0.63, blue: 0.28))
                .frame(maxWidth: .infinity, alignment: .top)
                .padding(20)
            // Description
            Text(screenDescription)
                .font(
                    Font.custom("Quicksand", size: 14)
                        .weight(.medium)
                )
                .foregroundColor(.black.opacity(0.8))
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(20)
            // Image
            Image(screenImg)
                .resizable()
                .frame(width: 308, height: 406)
                .padding(20)
            // Button
            ModuleButton(label: screenButtonLabel,
                         onClick: buttonClick,
                         buttonType: .primary)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(.white)
        .cornerRadius(16)
        .shadow(radius: 5)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .inset(by: 0.5)
                .stroke(
                    LinearGradient(
                        colors: [.red, .orange, .yellow, .green, .blue, .purple],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing),
                    lineWidth: 1)
        )
        .padding(20)
        .navigationBarBackButtonHidden(true)
    }
}

struct CompletionScreenPreview: PreviewProvider {
    @State static var path = [appPages.home]
    static var previews: some View {
        CompletionScreen(path: $path,
                         screenHeading: "Well Done!",
                         screenDescription: "You’re a step closer to breaking those negative thinking patterns!\n\nMaking a habit of doing this activity will help you along on your journey to good mental health 😊",
                         screenImg: "completion-girl-road",
                         screenButtonLabel: "Nice!")
    }
}
