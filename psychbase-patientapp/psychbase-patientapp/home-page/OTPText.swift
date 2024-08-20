//
//  OTPText.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 20/8/2024.
//

import SwiftUI

enum FocusField: Hashable {
    case field
}

struct OTPText: View {
    var pinLength: Int
    var keyboardType: UIKeyboardType
    var onComplete: (String) -> ()
    
    @State private var verificationCode = ""
    @FocusState private var focusField: FocusField?
    
    var body: some View {
        ZStack(alignment: .center) {
            OTPTextField(verificationCode: $verificationCode, pinLength: pinLength, keyboardType: keyboardType) {
                onComplete(verificationCode)
            }
            HStack {
                ForEach(0..<pinLength, id: \.self) { i in
                    ZStack {
                        Text(getPin(at: i))
                            .font(.custom("AmericanTypewriter", size: 35))
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                        
                        Rectangle()
                            .frame(height: 3)
                            .foregroundColor(.white)
                            .padding(.trailing, 5)
                            .padding(.leading, 5)
                            .opacity(verificationCode.count <= i ? 1 : 0)
                            .padding(.vertical, 35)
                    }
                }
            }
            
        }
        .onAppear{
            UITextField.appearance().clearButtonMode = .never
            UITextField.appearance().tintColor = UIColor.clear
        }
    }
    
    func getPin(at index: Int) -> String {
        guard self.verificationCode.count > index else {
            return ""
        }
        
        return String(verificationCode[index])
    }
}
