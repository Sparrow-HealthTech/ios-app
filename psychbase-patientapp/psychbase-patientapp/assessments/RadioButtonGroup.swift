//
//  RadioButtonGroup.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 30/7/2024.
//

import SwiftUI

struct Line: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.minX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
        return path
    }
}

struct RadioButtonGroup<Tag, CustomButton>: View
where Tag : Hashable, CustomButton : View {
    
    let tags: [Tag]
    var buttonSpacing: CGFloat
    var stackPadding: CGFloat
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
        ZStack {
            HStack(alignment: .top, spacing: buttonSpacing) {
                radioButtons
            }
            .padding(stackPadding)
        }
    }
}
