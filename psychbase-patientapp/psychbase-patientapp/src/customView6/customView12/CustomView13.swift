//
//  CustomView13.swift
//
//  Created by codia-figma
//

import SwiftUI

struct CustomView13: View {
    @State public var text8Text: String = "Assigned Assessment"
    @State public var text9Text: String = "To see how you’re progressing your psychologist needs you to complete the following assessment."
    var body: some View {
        VStack(alignment: .leading) {
            Text(text8Text)
                .foregroundColor(Color(red: 0.16, green: 0.16, blue: 0.17, opacity: 1.00))
                .font(.custom("Quicksand-SemiBold", size: 20))
                .lineLimit(1)
                .frame(alignment: .center)
                .multilineTextAlignment(.center)
            Text(text9Text)
                .foregroundColor(Color(red: 0.00, green: 0.00, blue: 0.00, opacity: 0.80))
                .font(.custom("Quicksand-Medium", size: 12))
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
        }
        .fixedSize(horizontal: false, vertical: true)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct CustomView13_Previews: PreviewProvider {
    static var previews: some View {
        CustomView13()
    }
}
