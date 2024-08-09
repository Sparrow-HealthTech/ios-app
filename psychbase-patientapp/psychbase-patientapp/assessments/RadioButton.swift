//
//  RadioButton.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 30/7/2024.
//

import SwiftUI

struct RadioButton<Tag, CustomButton>: View
where Tag : Hashable, CustomButton : View {
    
    let tag: Tag
    @Binding var selection: Tag?
    @ViewBuilder let button: (Bool, Tag) -> CustomButton
    
    var body: some View {
        Button {
            selection = tag
        } label: {
            VStack {
                button(selection == tag, tag)
            }
        }
        .buttonStyle(.plain)
    }
}
