//
//  WelcomeOnboard.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 20/8/2024.
//

import SwiftUI

enum onboardingPages {
    case connectionPage
    case setPINPage
}

struct WelcomeOnboard: View {
    @Binding var path: [appPages]
    
    @State var currentPage = onboardingPages.connectionPage
    
    var body: some View {
        VStack {
            if currentPage == .connectionPage {
                ConnectionScreen(currentPage: $currentPage)
            } else if currentPage == .setPINPage {
                SetPINScreen(path: $path)
            }
            
            Image("welcome-bottom")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .background(Color(red: 0.17, green: 0.63, blue: 0.28))
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct WelcomeOnboardPreview: PreviewProvider {
    @State static var path = [appPages.home]
    static var previews: some View {
        WelcomeOnboard(path: $path)
    }
}
