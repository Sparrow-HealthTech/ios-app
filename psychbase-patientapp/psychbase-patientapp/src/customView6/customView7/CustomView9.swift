//
//  CustomView9.swift
//
//  Created by codia-figma
//

import SwiftUI

struct CustomView9: View {
    @State public var image6Path: String = "image6_3283641"
    @State public var text5Text: String = "Thought Challenging"
    @State public var text6Text: String = "Having an unhelpful thought? Do this 1 min exercise to challenge it and help rewire your brain!"
    var body: some View {
        VStack(alignment: .leading) {
            Image(image6Path)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 337, height: 175, alignment: .topLeading)
            CustomView10(
                text5Text: text5Text,
                text6Text: text6Text)
        }
        .fixedSize(horizontal: false, vertical: true)
        .frame(maxWidth: .infinity, alignment: .leading)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .clipped()
    }
}

struct CustomView9_Previews: PreviewProvider {
    static var previews: some View {
        CustomView9()
    }
}
