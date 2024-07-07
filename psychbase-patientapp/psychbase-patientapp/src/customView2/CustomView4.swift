//
//  CustomView4.swift
//
//  Created by codia-figma
//

import SwiftUI

struct CustomView4: View {
    @State public var text1Text: String = "9:41"
    var body: some View {
        ZStack(alignment: .topLeading) {
                HStack {
                    Spacer()
                        Text(text1Text)
                            .foregroundColor(Color(red: 0.00, green: 0.00, blue: 0.00, opacity: 1.00))
                            .font(.custom("SFProText-Semibold", size: 15))
                            .lineLimit(1)
                            .frame(alignment: .center)
                            .multilineTextAlignment(.center)
                    Spacer()
                }
                .offset(y: 2.091)
        }
        .frame(width: 51.984, height: 21.955, alignment: .topLeading)
    }
}

struct CustomView4_Previews: PreviewProvider {
    static var previews: some View {
        CustomView4()
    }
}
