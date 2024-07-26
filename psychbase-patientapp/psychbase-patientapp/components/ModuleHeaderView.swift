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
                    Image("start-button")
                        .resizable()
                        .frame(width: 16, height: 16)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ModuleHeaderView()
}
