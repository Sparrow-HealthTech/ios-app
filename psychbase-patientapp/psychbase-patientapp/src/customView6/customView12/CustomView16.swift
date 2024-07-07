//
//  CustomView16.swift
//
//  Created by codia-figma
//

import SwiftUI

struct CustomView16: View {
    @State public var text12Text: String = "ToDo - This Week"
    @State public var image9Path: String = "image9_3283664"
    var body: some View {
        HStack(alignment: .center, spacing: 8) {
            Text(text12Text)
                .foregroundColor(Color(red: 1.00, green: 1.00, blue: 1.00, opacity: 1.00))
                .font(.custom("Quicksand-Bold", size: 14))
                .lineLimit(1)
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
            Image(image9Path)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 16, height: 16, alignment: .topLeading)
        }
        .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 8))
        .fixedSize(horizontal: true, vertical: true)
        .background(Color(red: 0.17, green: 0.63, blue: 0.28, opacity: 1.00))
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

struct CustomView16_Previews: PreviewProvider {
    static var previews: some View {
        CustomView16()
    }
}
