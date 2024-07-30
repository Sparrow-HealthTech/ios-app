//
//  DoctorView.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 30/7/2024.
//

import SwiftUI

struct Doctor: View {
    var body: some View {
        HStack(alignment: .top, spacing: 0) {
            Image("male-doctor-1")
                .resizable()
                .frame(width: 150, height: 250)
            Image("chat-bubble-polygon")
                .resizable()
                .frame(width: 20, height: 16)
                .padding(.top, 20)
            HStack(alignment: .center, spacing: 10) {
                Text("This assessment gives your psychologist valuable information to guide your therapy.\n\nIt shouldn’t take more than 2 mins to complete. \n\nDon’t overthink your answers. Trust your intuition!")
                    .font(
                        Font.custom("Quicksand", size: 14)
                            .weight(.medium))
                    .foregroundColor(Color(red: 0.17, green: 0.63, blue: 0.28))
            }
            .padding(8)
            .frame(maxWidth: .infinity, alignment: .center)
            .background(Color(red: 0.17, green: 0.63, blue: 0.28).opacity(0.12))
            .cornerRadius(12)
        }
        .padding([.horizontal, .top], 20)
        .padding(.bottom, 0)
        .frame(maxWidth: .infinity, alignment: .topLeading)
    }
}

#Preview {
    Doctor()
}
