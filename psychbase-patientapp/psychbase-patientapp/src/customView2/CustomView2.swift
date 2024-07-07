//
//  CustomView2.swift
//
//  Created by codia-figma
//

import SwiftUI

struct CustomView2: View {
    @State public var image1Path: String = "image1_3283616"
    @State public var image2Path: String = "image2_3283620"
    @State public var image3Path: String = "image3_3283624"
    @State public var text1Text: String = "9:41"
    @State public var text2Text: String = "PSYCHBASE"
    @State public var image4Path: String = "image4_3284008"
    @State public var image5Path: String = "image5_3283634"
    var body: some View {
        VStack(alignment: .leading) {
            CustomView3(
                image1Path: image1Path,
                image2Path: image2Path,
                image3Path: image3Path,
                text1Text: text1Text)
                .frame(height: 46)
            CustomView5(
                text2Text: text2Text,
                image4Path: image4Path,
                image5Path: image5Path)
                .frame(height: 57)
        }
        .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
        .fixedSize(horizontal: false, vertical: true)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(red: 1.00, green: 1.00, blue: 1.00, opacity: 1.00))
        .overlay(RoundedRectangle(cornerRadius: 0).stroke(Color(red: 1.00, green: 1.00, blue: 1.00, opacity: 1.00), lineWidth: 1))
    }
}

struct CustomView2_Previews: PreviewProvider {
    static var previews: some View {
        CustomView2()
    }
}
