//
//  CustomView14.swift
//
//  Created by codia-figma
//

import SwiftUI

struct CustomView14: View {
    @State public var image8Path: String = "image8_3283656"
    @State public var text10Text: String = "DASS-10 Questionaire"
    @State public var text11Text: String = "This 2 min survey measures your depression, anxiety & stress levels."
    var body: some View {
        VStack(alignment: .leading) {
            Image(image8Path)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 337, height: 175, alignment: .topLeading)
            CustomView15(
                text10Text: text10Text,
                text11Text: text11Text)
        }
        .fixedSize(horizontal: false, vertical: true)
        .frame(maxWidth: .infinity, alignment: .leading)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .clipped()
    }
}

struct CustomView14_Previews: PreviewProvider {
    static var previews: some View {
        CustomView14()
    }
}
