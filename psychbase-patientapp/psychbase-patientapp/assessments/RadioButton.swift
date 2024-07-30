//
//  RadioButton.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 30/7/2024.
//

import SwiftUI

struct RadioButton<Tag, CircleButton, Label>: View
where Tag : Hashable, CircleButton : View, Label : View {
    
    let tag: Tag
    @Binding var selection: Tag?
    @ViewBuilder let button: (Bool) -> CircleButton
    @ViewBuilder let label: () -> Label
    
    var body: some View {
        Button {
            selection = tag
        } label: {
            VStack {
                button(selection == tag)
                label()
            }
        }
        .buttonStyle(.plain)
    }
}
