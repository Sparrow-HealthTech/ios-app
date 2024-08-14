//
//  ThoughtTypeOption.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 13/8/2024.
//

import SwiftUI

struct ThoughtTypeOption: View {
    var typeImgPath: String
    var typeTitle: String
    var typeDescription: String
    
    func selectType(){
        
    }
    
    var body: some View {
        Button(action: selectType){
            HStack(alignment: .center, spacing: 12) {
                Image("checkbox-circle")
                    .resizable()
                    .frame(width: 16, height: 16)
                Image(typeImgPath)
                    .resizable()
                    .frame(width: 45, height: 60)
                
                VStack(alignment: .leading, spacing: 7) {
                    Text(typeTitle)
                      .font(
                        Font.custom("Quicksand", size: 15)
                          .weight(.semibold)
                      )
                      .foregroundColor(.black)
                    
                    Text(typeDescription)
                      .font(
                        Font.custom("Quicksand", size: 13)
                          .weight(.medium)
                      )
                      .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                      .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                }
                .padding(0)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(8)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.white)
            .cornerRadius(12)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .inset(by: 0.5)
                    .stroke(Color(red: 0.17, green: 0.63, blue: 0.28).opacity(0.12), lineWidth: 1)
            )
        }
    }
}
