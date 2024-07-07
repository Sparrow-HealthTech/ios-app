//
//  CustomView12.swift
//
//  Created by codia-figma
//

import SwiftUI

struct CustomView12: View {
    @State public var text8Text: String = "Assigned Assessment"
    @State public var text9Text: String = "To see how you’re progressing your psychologist needs you to complete the following assessment."
    @State public var image8Path: String = "image8_3283656"
    @State public var text10Text: String = "DASS-10 Questionaire"
    @State public var text11Text: String = "This 2 min survey measures your depression, anxiety & stress levels."
    @State public var text12Text: String = "ToDo - This Week"
    @State public var image9Path: String = "image9_3283664"
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            CustomView13(
                text8Text: text8Text,
                text9Text: text9Text)
            CustomView14(
                image8Path: image8Path,
                text10Text: text10Text,
                text11Text: text11Text)
            CustomView16(
                text12Text: text12Text,
                image9Path: image9Path)
        }
        .padding(EdgeInsets(top: 12, leading: 12, bottom: 12, trailing: 12))
        .fixedSize(horizontal: false, vertical: true)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(red: 1.00, green: 1.00, blue: 1.00, opacity: 1.00))
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}

struct CustomView12_Previews: PreviewProvider {
    static var previews: some View {
        CustomView12()
    }
}
