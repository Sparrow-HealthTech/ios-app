//
//  CustomView3.swift
//
//  Created by codia-figma
//

import SwiftUI

struct CustomView3: View {
    @State public var image1Path: String = "image1_3283616"
    @State public var image2Path: String = "image2_3283620"
    @State public var image3Path: String = "image3_3283624"
    @State public var text1Text: String = "9:41"
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image(image1Path)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 23.42, height: 11.848, alignment: .topLeading)
                .offset(x: 323.456, y: 18.121)
            Image(image2Path)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 14.702, height: 11.464, alignment: .topLeading)
                .offset(x: 303.908, y: 18.118)
            Image(image3Path)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 16.365, height: 11.152, alignment: .topLeading)
                .offset(x: 282.703, y: 18.47)
            CustomView4(text1Text: text1Text)
                .frame(width: 51.984, height: 21.955)
                .offset(x: 20.216, y: 12.545)
        }
        .frame(height: 46, alignment: .topLeading)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct CustomView3_Previews: PreviewProvider {
    static var previews: some View {
        CustomView3()
    }
}
