//
//  SwiftUIView.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 7/7/2024.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack{
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 46.02273, height: 45)
              .background(
                Image("sparrow-logo")
                  .resizable()
                  .aspectRatio(contentMode: .fill)
                  .frame(width: 46.022727966308594, height: 45)
                  .clipped()
                  .padding(.leading, 240)
              )
            Text("PSYCHBASE")
              .font(
                Font.custom("Quicksand", size: 20)
                  .weight(.bold)
              )
              .multilineTextAlignment(.center)
              .foregroundColor(Color(red: 0.18, green: 0.16, blue: 0.17))
              .frame(width: 361, alignment: .center)
              .padding(.top, 5)
        }
        .frame(maxWidth: .infinity, minHeight: 57)
    }
}

#Preview {
    HeaderView()
}
