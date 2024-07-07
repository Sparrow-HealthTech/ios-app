//
//  CustomView5.swift
//
//  Created by codia-figma
//

import SwiftUI

struct CustomView5: View {
    @State public var text2Text: String = "PSYCHBASE"
    @State public var image4Path: String = "image4_3284008"
    @State public var image5Path: String = "image5_3283634"
    var body: some View {
        ZStack(alignment: .topLeading) {
                HStack {
                    Spacer()
                        Text(text2Text)
                            .foregroundColor(Color(red: 0.18, green: 0.16, blue: 0.17, opacity: 1.00))
                            .font(.custom("Quicksand-Bold", size: 20))
                            .lineLimit(1)
                            .frame(alignment: .center)
                            .multilineTextAlignment(.center)
                    Spacer()
                }
                .offset(y: 16)
            Image(image4Path)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 35, height: 35, alignment: .topLeading)
                .offset(x: 316, y: 11)
            Image(image5Path)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 46.023, height: 45, alignment: .topLeading)
                .offset(x: 79, y: 3)
        }
        .frame(height: 57, alignment: .topLeading)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct CustomView5_Previews: PreviewProvider {
    static var previews: some View {
        CustomView5()
    }
}
