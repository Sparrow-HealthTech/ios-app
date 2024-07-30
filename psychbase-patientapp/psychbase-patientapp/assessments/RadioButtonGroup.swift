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
            HStack(alignment: .top, spacing: 40) {
                radioButtons
            }
            .padding()
        }
    }
}
