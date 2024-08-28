//
//  OTPTextField.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 20/8/2024.
//

import SwiftUI
import Combine

struct OTPTextField: View {
    @FocusState private var keyboardFocusField: FocusField?
    @Binding var PIN: String
    @State var isAllNumbersFilled: Bool = false
    
    var pinLength = 6
    var keyboardType: UIKeyboardType = .numberPad
    var onComplete: () -> ()
    
    var body: some View {
        ZStack {
            TextField("", text: $PIN)
                .frame(width: 0, height: 0, alignment: .center)
                .font(Font.system(size: 0))
                .accentColor(.white)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .keyboardType(keyboardType)
                .focused($keyboardFocusField, equals: .field)
                .padding()
                .task {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        self.keyboardFocusField = .field
                    }
                }
                .onReceive(Just(PIN)) { _ in
                    if PIN.count > pinLength {
                        PIN = String(PIN.prefix(pinLength))
                    }
                    
                    if PIN.count == pinLength && !isAllNumbersFilled {
                        onComplete()
                    } else if PIN.count < pinLength {
                        isAllNumbersFilled = false
                    }
                }
        }
    }
}
