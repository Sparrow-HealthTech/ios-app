//
//  CustomView15.swift
//
//  Created by codia-figma
//

import SwiftUI

struct CustomView15: View {
    @State public var text10Text: String = "DASS-10 Questionaire"
    @State public var text11Text: String = "This 2 min survey measures your depression, anxiety & stress levels."
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(text10Text)
                .foregroundColor(Color(red: 0.16, green: 0.16, blue: 0.17, opacity: 1.00))
                .font(.custom("Quicksand-SemiBold", size: 16))
                .lineLimit(1)
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
            Text(text11Text)
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

struct CustomView15_Previews: PreviewProvider {
    static var previews: some View {
        CustomView15()
    }
}
