//
//  ModuleButton.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 9/8/2024.
//

import SwiftUI

struct ModuleButton: View {
    var label: String
    var onClick: () -> Void
    
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
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
        .frame(maxWidth: .infinity, alignment: .center)
    }
}

struct ButtonPreview: PreviewProvider {
    static func demoFunc() {}
    static var previews: some View {
        ModuleButton(label: "Click Me!", onClick: demoFunc)
    }
}
