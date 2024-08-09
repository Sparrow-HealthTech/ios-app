//
//  RadioButtonGroup.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 30/7/2024.
//

import SwiftUI

struct RadioButtonGroup<Tag, CustomButton>: View
where Tag : Hashable, CustomButton : View {
    
    let tags: [Tag]
    var buttonSpacing: CGFloat
    @Binding var selection: Tag?
    @ViewBuilder let button: (Bool, Tag) -> CustomButton
    
    @ViewBuilder private var radioButtons: some View {
        ForEach(tags, id: \.self) { tag in
            RadioButton(tag: tag,
                        selection: $selection,
                        button: button)
        }
    }
    
    var body: some View {
        ZStack() {
            HStack(alignment: .top, spacing: buttonSpacing) {
                radioButtons
            }
            .padding()
        }
    }
}
