//
//  RadioButtonGroup.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 30/7/2024.
//

import SwiftUI

struct RadioButtonGroup<Tag, CircleButton, Label>: View
where Tag : Hashable, CircleButton : View, Label : View {
    
    let tags: [Tag]
    @Binding var selection: Tag?
    @ViewBuilder let button: (Bool) -> CircleButton
    @ViewBuilder let label: (Tag) -> Label
    
    @ViewBuilder private var radioButtons: some View {
        ForEach(tags, id: \.self) { tag in
            RadioButton(tag: tag,
                        selection: $selection,
                        button: button) {
                        label(tag)
            }
        }
    }
    
    var body: some View {
        ZStack() {
            Rectangle()
                .fill(Color(red: 0.17, green: 0.63, blue: 0.28).opacity(0.12))
                .frame(width: 250, height: 2)
                .offset(y: -6)
            HStack(alignment: .top, spacing: 35) {
                radioButtons
            }
            .padding(.leading, 30)
            .padding(.top, 20)
        }
    }
}
