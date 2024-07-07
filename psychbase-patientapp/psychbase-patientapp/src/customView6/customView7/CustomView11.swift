//
//  CustomView11.swift
//
//  Created by codia-figma
//

import SwiftUI

struct CustomView11: View {
    @State public var text7Text: String = "Start Exercise!"
    @State public var image7Path: String = "image7_3283649"
    var body: some View {
        HStack(alignment: .center, spacing: 8) {
            Text(text7Text)
                .foregroundColor(Color(red: 1.00, green: 1.00, blue: 1.00, opacity: 1.00))
                .font(.custom("Quicksand-Bold", size: 14))
                .lineLimit(1)
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
            Image(image7Path)
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

struct CustomView11_Previews: PreviewProvider {
    static var previews: some View {
        CustomView11()
    }
}
