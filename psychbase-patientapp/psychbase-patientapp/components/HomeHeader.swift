//
//  SwiftUIView.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 7/7/2024.
//

import SwiftUI

struct HomeHeader: View {
    @Binding var path: [appPages]
    
    func goToResources() {
        
    }
    
    var body: some View {
        HStack() {
            Image("psychbase-logo")
                .resizable()
                .frame(width: 140, height: 30)
                .padding(.leading, 20)
            Spacer()
            
            //Resources Button
            Button(action: goToResources){
                Image("resources-button")
                    .resizable()
                    .frame(width: 105, height: 35)
                    .padding(.horizontal)
            }
        }
    }
}
