//
//  CustomView8.swift
//
//  Created by codia-figma
//

import SwiftUI

struct CustomView8: View {
    @State public var text3Text: String = "Assigned Action Plan"
    @State public var text4Text: String = "Your psychologist has assigned this activity to complete as part of your treatment plan."
    var body: some View {
        VStack(alignment: .leading) {
            Text(text3Text)
                .foregroundColor(Color(red: 0.16, green: 0.16, blue: 0.17, opacity: 1.00))
                .font(.custom("Quicksand-SemiBold", size: 20))
                .lineLimit(1)
                .frame(alignment: .center)
                .multilineTextAlignment(.center)
            Text(text4Text)
                .foregroundColor(Color(red: 0.00, green: 0.00, blue: 0.00, opacity: 0.80))
                .font(.custom("Quicksand-Medium", size: 12))
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
        }
        .fixedSize(horizontal: false, vertical: true)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct CustomView8_Previews: PreviewProvider {
    static var previews: some View {
        CustomView8()
    }
}
