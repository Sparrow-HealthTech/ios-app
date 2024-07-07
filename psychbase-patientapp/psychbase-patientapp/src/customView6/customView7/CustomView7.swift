//
//  CustomView7.swift
//
//  Created by codia-figma
//

import SwiftUI

struct CustomView7: View {
    @State public var text3Text: String = "Assigned Action Plan"
    @State public var text4Text: String = "Your psychologist has assigned this activity to complete as part of your treatment plan."
    @State public var image6Path: String = "image6_3283641"
    @State public var text5Text: String = "Thought Challenging"
    @State public var text6Text: String = "Having an unhelpful thought? Do this 1 min exercise to challenge it and help rewire your brain!"
    @State public var text7Text: String = "Start Exercise!"
    @State public var image7Path: String = "image7_3283649"
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            CustomView8(
                text3Text: text3Text,
                text4Text: text4Text)
            CustomView9(
                image6Path: image6Path,
                text5Text: text5Text,
                text6Text: text6Text)
            CustomView11(
                text7Text: text7Text,
                image7Path: image7Path)
        }
        .padding(EdgeInsets(top: 12, leading: 12, bottom: 12, trailing: 12))
        .fixedSize(horizontal: false, vertical: true)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(red: 1.00, green: 1.00, blue: 1.00, opacity: 1.00))
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}

struct CustomView7_Previews: PreviewProvider {
    static var previews: some View {
        CustomView7()
    }
}
