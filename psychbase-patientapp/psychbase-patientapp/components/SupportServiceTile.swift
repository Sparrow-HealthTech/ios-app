//
//  SupportServiceTile.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 16/8/2024.
//

import SwiftUI

struct SupportServiceTile: View {
    var tileTxt: Text
    var logoImg: String
    var imgDims: [CGFloat]
    
    var body: some View {
        ZStack {
            HStack{
                tileTxt
                  .font(
                    Font.custom("Quicksand", size: 12)
                      .weight(.medium)
                  )
                  .multilineTextAlignment(.center)
                  .foregroundColor(.black)
                  .padding()
                  .padding(.top, 20)
            }
                .foregroundColor(.clear)
                .background(Color(red: 0.12, green: 0.93, blue: 0.31).opacity(0.32))
                .cornerRadius(15)
                .alignmentGuide(VerticalAlignment.center){
                    $0[VerticalAlignment.top]
                }
                .padding(.horizontal, 25)
            Image(logoImg)
                .resizable()
                .frame(width: imgDims[0], height: imgDims[1])
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .inset(by: -0.5)
                        .stroke(.black, lineWidth: 1)
                )
        }
    }
}
