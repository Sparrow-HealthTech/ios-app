//
//  MoodSubgrid.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 13/8/2024.
//

import SwiftUI

struct MoodSubgrid: View {
    var emotions: [String]
    
    let fontSize: CGFloat = 12
    
    var body: some View {
        HStack(alignment: .top, spacing: 0) {
            // Cell 1
            VStack(alignment: .leading, spacing: 0) {
                Text(emotions[0])
                    .foregroundStyle(Color(.white))
                    .font(
                        Font.custom("Quicksand", size: fontSize)
                    )
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .overlay(
                Rectangle()
                    .stroke(.white, lineWidth: 1)
            )
            
            // Cell 2
            VStack(alignment: .center, spacing: 0) {
                Text(emotions[1])
                    .foregroundStyle(Color(.white))
                    .font(
                        Font.custom("Quicksand", size: fontSize)
                    )
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .overlay(
                Rectangle()
                    .stroke(.white, lineWidth: 1)
            )
            
            // Cell 3
            VStack(alignment: .center, spacing: 0) {
                Text(emotions[2])
                    .foregroundStyle(Color(.white))
                    .font(
                        Font.custom("Quicksand", size: fontSize)
                    )
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .overlay(
                Rectangle()
                    .stroke(.white, lineWidth: 1)
            )
        }
        .padding(0)
    }
}
