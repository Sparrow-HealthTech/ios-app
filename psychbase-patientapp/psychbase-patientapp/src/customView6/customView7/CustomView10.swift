//
//  CustomView10.swift
//
//  Created by codia-figma
//

import SwiftUI

struct CustomView10: View {
    @State public var text5Text: String = "Thought Challenging"
    @State public var text6Text: String = "Having an unhelpful thought? Do this 1 min exercise to challenge it and help rewire your brain!"
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(text5Text)
                .foregroundColor(Color(red: 0.16, green: 0.16, blue: 0.17, opacity: 1.00))
                .font(.custom("Quicksand-SemiBold", size: 16))
                .lineLimit(1)
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
            Text(text6Text)
                .foregroundColor(Color(red: 0.00, green: 0.00, blue: 0.00, opacity: 0.80))
                .font(.custom("Quicksand-Medium", size: 12))
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
        }
        .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
        .fixedSize(horizontal: false, vertical: true)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct CustomView10_Previews: PreviewProvider {
    static var previews: some View {
        CustomView10()
    }
}
