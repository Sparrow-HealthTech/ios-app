//
//  ModuleHeaderView.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 24/7/2024.
//

import SwiftUI

struct ModuleHeaderView: View {
    func goBack(){
        
    }
    
    var body: some View {
        VStack() {
            HStack() {
                Image("psychbase-logo")
                    .resizable()
                    .frame(width: 140, height: 30)
                    .padding(.leading, 20)
                Spacer()
            }
            HStack() {
                Button(action: goBack) {
                    Image("back-button")
                        .resizable()
                        .frame(width: 24, height: 24)
                }
                .padding(.leading, 20)
                Text("DASS-10 Assessment")
                  .font(
                    Font.custom("Sans Serif", size: 20)
                      .weight(.bold)
                  )
                  .multilineTextAlignment(.center)
                  .foregroundColor(Color(red: 0.18, green: 0.16, blue: 0.17))
                  .frame(maxWidth: .infinity, alignment: .top)
                  .padding(.trailing, 50)
            }
            .padding(.top, 10)
        }
    }
}

#Preview {
    ModuleHeaderView()
}
