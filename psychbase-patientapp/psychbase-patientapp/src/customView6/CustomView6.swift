//
//  CustomView6.swift
//
//  Created by codia-figma
//

import SwiftUI

struct CustomView6: View {
    @State public var text3Text: String = "Assigned Action Plan"
    @State public var text4Text: String = "Your psychologist has assigned this activity to complete as part of your treatment plan."
    @State public var image6Path: String = "image6_3283641"
    @State public var text5Text: String = "Thought Challenging"
    @State public var text6Text: String = "Having an unhelpful thought? Do this 1 min exercise to challenge it and help rewire your brain!"
    @State public var text7Text: String = "Start Exercise!"
    @State public var image7Path: String = "image7_3283649"
    @State public var text8Text: String = "Assigned Assessment"
    @State public var text9Text: String = "To see how you’re progressing your psychologist needs you to complete the following assessment."
    @State public var image8Path: String = "image8_3283656"
    @State public var text10Text: String = "DASS-10 Questionaire"
    @State public var text11Text: String = "This 2 min survey measures your depression, anxiety & stress levels."
    @State public var text12Text: String = "ToDo - This Week"
    @State public var image9Path: String = "image9_3283664"
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            CustomView7(
                text3Text: text3Text,
                text4Text: text4Text,
                image6Path: image6Path,
                text5Text: text5Text,
                text6Text: text6Text,
                text7Text: text7Text,
                image7Path: image7Path)
            CustomView12(
                text8Text: text8Text,
                text9Text: text9Text,
                image8Path: image8Path,
                text10Text: text10Text,
                text11Text: text11Text,
                text12Text: text12Text,
                image9Path: image9Path)
        }
        .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
        .fixedSize(horizontal: false, vertical: true)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct CustomView6_Previews: PreviewProvider {
    static var previews: some View {
        CustomView6()
    }
}
