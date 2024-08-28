//
//  ActionPlansView.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 7/7/2024.
//

import SwiftUI

struct ModuleTile: View {
    @Binding var path: [appPages]
    @Binding var tileData: ModuleTileData
    
    func startModule(){
        if tileData.type == .actionPlan {
            path.append(.actionPlan1)
        }
        else if tileData.type == .assessment {
            path.append(.assessment1)
        }
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            // Heading
            Text(tileData.tileHeading)
                .font(
                    Font.custom("Quicksand", size: 20)
                        .weight(.semibold)
                )
                .multilineTextAlignment(.center)
                .foregroundColor(Color(red: 0.16, green: 0.16, blue: 0.17))
                .frame(maxWidth: .infinity, alignment: .top)
            // Description
            Text(tileData.tileSubtitle)
                .font(
                    Font.custom("Quicksand", size: 12)
                        .weight(.medium)
                )
                .foregroundColor(.black.opacity(0.8))
                .frame(maxWidth: .infinity, minHeight: 30, alignment: .topLeading)
                .padding(10)
            // Image
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 338, height: 183)
                .background(
                    Image(tileData.tilePicture)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 338, height: 183)
                        .clipped()
                )
            // Exercise Name
            Text(tileData.moduleHeading)
                .font(
                    Font.custom("Quicksand", size: 18)
                        .weight(.semibold)
                )
                .foregroundColor(Color(red: 0.16, green: 0.16, blue: 0.17))
                .frame(maxWidth: .infinity, alignment: .topLeading)
                .padding(.top, 15)
                .padding(.leading, 10)
            // Exercise Description
            Text(tileData.moduleSubtitle)
                .font(
                    Font.custom("Quicksand", size: 12)
                        .weight(.medium)
                )
                .foregroundColor(.black.opacity(0.8))
                .frame(maxWidth: .infinity, minHeight: 30, alignment:  .topLeading)
                .padding([.top, .leading, .bottom], 10)
            // Button
            HStack(alignment: .center, spacing: 8) {
                Button(action: startModule) {
                    Text(tileData.buttonLabel)
                        .font(
                            Font.custom("Quicksand", size: 14)
                                .weight(.bold)
                        )
                        .foregroundColor(.white)
                    if(!tileData.isButtonDisabled){
                        Image("start-button")
                            .resizable()
                            .frame(width: 16, height: 16)
                    }
                }
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            .background(Color(red: 0.17, green: 0.63, blue: 0.28))
            .cornerRadius(12)
            .if(tileData.isButtonDisabled){view in
                view.disabled(true)
                    .grayscale(0.5)
                    .opacity(0.8)
            }
        }
        .padding(12)
        .frame(maxWidth: .infinity, alignment: .top)
        .background(.white)
        .cornerRadius(16)
        .shadow(radius: 5)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .inset(by: 0.5)
                .stroke(
                    LinearGradient(
                        colors: [.red, .orange, .yellow, .green, .blue, .purple],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing),
                    lineWidth: 1)
        )
    }
}
