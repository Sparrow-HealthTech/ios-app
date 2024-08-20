//
//  WelcomeAuth.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 20/8/2024.
//

import SwiftUI

struct WelcomeAuth: View {
    @Binding var path: [appPages]
    
    func authenticatePIN(PIN: String){
        path = [.home]
    }
    
    var body: some View {
        VStack {
            VStack(alignment: .center, spacing: 20) {
                Spacer()
                Text("Hello John 👋\n\nWelcome back!")
                    .font(
                        Font.custom("Urbanist", size: 32)
                            .weight(.bold)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                
                Spacer()
                
                Text("Enter PIN:")
                  .font(
                    Font.custom("Urbanist", size: 24)
                      .weight(.semibold)
                  )
                  .foregroundColor(.white)
                
                OTPText(pinLength: 4,
                        keyboardType: .numberPad,
                        onComplete: authenticatePIN)
                .padding(.horizontal, 50)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity,
                   alignment: .center)
                   
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

struct WelcomeAuthPreview: PreviewProvider {
    @State static var path = [appPages.home]
    static var previews: some View {
        WelcomeAuth(path: $path)
    }
}
