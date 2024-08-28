//
//  SetPINScreen.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 20/8/2024.
//

import SwiftUI

enum PINStage {
    case input
    case confirm
}

struct SetPINScreen: View {
    @Binding var path: [appPages]
    
    @State var pinStage = PINStage.input
    
    func inputPIN(PIN: String){
        pinStage = .confirm
    }

    func confirmPIN(PIN: String){
        path = [.completionOnboarding]
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 50) {
            Spacer()
            Text("Awesome!\nThanks John 😊")
                .font(
                    Font.custom("Urbanist", size: 32)
                        .weight(.bold)
                )
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
            
            VStack(spacing: 20) {
                Text("Now before we get started we have to make sure your app is secure.")
                    .font(
                        Font.custom("Urbanist", size: 16)
                            .weight(.semibold)
                    )
                    .foregroundColor(.white)
                    .padding(.bottom, 20)
                
                if pinStage == .input {
                    inputPINView
                } else if pinStage == .confirm {
                    confirmPINView
                }
            }
            .padding(.horizontal)
            .frame(maxWidth: 300, maxHeight: .infinity,
                   alignment: .topLeading)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity,
               alignment: .center)
    }
    
    var inputPINView: some View {
        VStack {
            Text("Enter PIN:")
                .font(
                    Font.custom("Urbanist", size: 20)
                        .weight(.semibold)
                )
                .foregroundColor(.white)
            
            OTPText(pinLength: 4,
                    keyboardType: .numberPad,
                    onComplete: inputPIN)
            .padding(.horizontal, 50)
        }
    }
    
    var confirmPINView: some View {
        VStack {
            Text("Confirm PIN:")
                .font(
                    Font.custom("Urbanist", size: 20)
                        .weight(.semibold)
                )
                .foregroundColor(.white)
            
            OTPText(pinLength: 4,
                    keyboardType: .numberPad,
                    onComplete: confirmPIN)
            .padding(.horizontal, 50)
        }
    }
}
