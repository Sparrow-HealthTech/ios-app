//
//  MoodGrid.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 13/8/2024.
//

import SwiftUI

struct MoodGrid: View {
    let subgridHeight: CGFloat = 140
    
    var body: some View {
        Grid(alignment: .center, horizontalSpacing: 1, verticalSpacing: 1) {
            GridRow {
                // Red Tile
                VStack(alignment: .leading, spacing: 0) {
                    MoodSubgrid(emotions: ["Enraged", "Stressed", "Shocked"])
                    MoodSubgrid(emotions: ["Fuming", "Angry", "Restless"])
                    MoodSubgrid(emotions: ["Repulsed", "Worried", "Uneasy"])
                }
                .frame(maxWidth: .infinity, idealHeight: subgridHeight)
                .background(
                    LinearGradient(
                        stops: [
                            Gradient.Stop(color: Color(red: 0.96, green: 0.28, blue: 0.28), location: 0.00),
                            Gradient.Stop(color: Color(red: 1, green: 0.59, blue: 0.22).opacity(0.88), location: 1.00),
                        ],
                        startPoint: UnitPoint(x: 0, y: 0),
                        endPoint: UnitPoint(x: 1, y: 1)
                    )
                )
                
                // Yellow Tile
                VStack(alignment: .leading, spacing: 0) {
                    MoodSubgrid(emotions: ["Surprised", "Festive", "Ecstatic"])
                    MoodSubgrid(emotions: ["Energised", "Optimistic", "Excited"])
                    MoodSubgrid(emotions: ["Pleasant", "Hopeful", "Blissful"])
                }
                .frame(maxWidth: .infinity, idealHeight: subgridHeight)
                .background(
                    LinearGradient(
                        stops: [
                            Gradient.Stop(color: Color(red: 0.99, green: 0.81, blue: 0.4), location: 0.00),
                            Gradient.Stop(color: Color(red: 0.98, green: 0.71, blue: 0.14), location: 1.00),
                        ],
                        startPoint: UnitPoint(x: 0, y: 1),
                        endPoint: UnitPoint(x: 1, y: 0)
                    )
                )
            }
            GridRow {
                // Blue tile
                VStack(alignment: .leading, spacing: 0) {
                    MoodSubgrid(emotions: ["Disgusted", "Down", "Apathetic"])
                    MoodSubgrid(emotions: ["Miserable", "Lonely", "Tired"])
                    MoodSubgrid(emotions: ["Despair", "Desolate", "Drained"])
                }
                .frame(maxWidth: .infinity, idealHeight: subgridHeight)
                .background(
                    LinearGradient(
                        stops: [
                            Gradient.Stop(color: Color(red: 0.43, green: 0.31, blue: 0.75).opacity(0.51), location: 0.00),
                            Gradient.Stop(color: Color(red: 0.26, green: 0.07, blue: 0.9), location: 1.00),
                        ],
                        startPoint: UnitPoint(x: 1, y: 0),
                        endPoint: UnitPoint(x: 0, y: 1)
                    )
                )
                
                // Green Tile
                VStack(alignment: .leading, spacing: 0) {
                    MoodSubgrid(emotions: ["At ease", "Content", "Fulfilled"])
                    MoodSubgrid(emotions: ["Relaxed", "Restful", "Balanced"])
                    MoodSubgrid(emotions: ["Sleepy", "Tranquil", "Serene"])
                }
                .frame(maxWidth: .infinity, idealHeight: subgridHeight)
                .background(
                    LinearGradient(
                        stops: [
                            Gradient.Stop(color: Color(red: 0.52, green: 0.78, blue: 0.44), location: 0.00),
                            Gradient.Stop(color: Color(red: 0.17, green: 0.63, blue: 0.28), location: 1.00),
                        ],
                        startPoint: UnitPoint(x: 0, y: 0),
                        endPoint: UnitPoint(x: 1, y: 1)
                    )
                )
            }
        }
    }
}
