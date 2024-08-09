//
//  ModuleButton.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 9/8/2024.
//

import SwiftUI

enum ButtonType {
    case primary, secondary
}

struct ModuleButton: View {
    var label: String
    var onClick: () -> Void
    var buttonType: ButtonType
    
    var body: some View {
        if buttonType == .primary {
            primaryButton
        } else if buttonType == .secondary {
            secondaryButton
        }
    }
    
    var primaryButton: some View {
        HStack {
            Button(action: onClick) {
                Text(label)
                    .font(
                        Font.custom("Quicksand", size: 16)
                            .weight(.bold)
                    )
                    .foregroundColor(.white)
            }
            .padding(.vertical, 10)
            .frame(maxWidth: .infinity, alignment: .center)
            .background(Color(red: 0.17, green: 0.63, blue: 0.28))
            .cornerRadius(12)
        }
        .padding(.horizontal, 30)
    }
    
    var secondaryButton: some View {
        HStack {
            Button(action: onClick) {
                Text(label)
                    .font(
                        Font.custom("Quicksand", size: 16)
                            .weight(.bold)
                    )
                    .foregroundColor(Color(red: 0.17, green: 0.63, blue: 0.28))
            }
            .padding(.vertical, 10)
            .frame(maxWidth: .infinity, alignment: .center)
            .background(Color(.white))
            .cornerRadius(12)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .inset(by: 0.5)
                    .stroke(Color(red: 0.17, green: 0.63, blue: 0.28), lineWidth: 1)
            )
        }
        .padding(.horizontal, 30)
    }
}

struct ButtonPreview: PreviewProvider {
    static func demoFunc() {}
    static var previews: some View {
        VStack {
            ModuleButton(label: "Click Me!",
                         onClick: demoFunc,
                         buttonType: .secondary)
            ModuleButton(label: "Click Me!",
                         onClick: demoFunc,
                         buttonType: .primary)
        }
    }
}
