//
//  SwiftUIView.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 7/7/2024.
//

import SwiftUI

struct HomeHeader: View {
    var body: some View {
        HStack() {
            Image("psychbase-logo")
                .resizable()
                .frame(width: 140, height: 30)
                .padding(.leading, 20)
            Spacer()
        }
    }
}

#Preview {
    HomeHeader()
}
