//
//  MoodGrid.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 13/8/2024.
//

import SwiftUI

struct MoodGrid: View {
    @State var selectedMood: String = ""
    
    let subgridHeight: CGFloat = 140
    
    let redGradient = LinearGradient(
        stops: [
            Gradient.Stop(color: Color(red: 0.96, green: 0.28, blue: 0.28), location: 0.00),
            Gradient.Stop(color: Color(red: 1, green: 0.59, blue: 0.22).opacity(0.88), location: 1.00),
        ],
        startPoint: UnitPoint(x: 0, y: 0),
        endPoint: UnitPoint(x: 1, y: 1)
    )
    
    let yellowGradient = LinearGradient(
        stops: [
            Gradient.Stop(color: Color(red: 0.99, green: 0.81, blue: 0.4), location: 0.00),
            Gradient.Stop(color: Color(red: 0.98, green: 0.71, blue: 0.14), location: 1.00),
        ],
        startPoint: UnitPoint(x: 0, y: 1),
        endPoint: UnitPoint(x: 1, y: 0)
    )
    
    let blueGradient = LinearGradient(
        stops: [
            Gradient.Stop(color: Color(red: 0.43, green: 0.31, blue: 0.75).opacity(0.51), location: 0.00),
            Gradient.Stop(color: Color(red: 0.26, green: 0.07, blue: 0.9), location: 1.00),
        ],
        startPoint: UnitPoint(x: 1, y: 0),
        endPoint: UnitPoint(x: 0, y: 1)
    )
    
    let greenGradient = LinearGradient(
        stops: [
            Gradient.Stop(color: Color(red: 0.52, green: 0.78, blue: 0.44), location: 0.00),
            Gradient.Stop(color: Color(red: 0.17, green: 0.63, blue: 0.28), location: 1.00),
        ],
        startPoint: UnitPoint(x: 0, y: 0),
        endPoint: UnitPoint(x: 1, y: 1)
    )
    
    var body: some View {
        Grid(alignment: .center, horizontalSpacing: 1, verticalSpacing: 1) {
            GridRow {
                // Red Tile
                VStack(alignment: .leading, spacing: 0) {
                    MoodSubgrid(selectedMood: $selectedMood,
                                gradient: redGradient,
                                emotions: ["Enraged", "Stressed", "Shocked"])
                    MoodSubgrid(selectedMood: $selectedMood,
                                gradient: redGradient,
                                emotions: ["Fuming", "Angry", "Restless"])
                    MoodSubgrid(selectedMood: $selectedMood,
                                gradient: redGradient,
                                emotions: ["Repulsed", "Worried", "Uneasy"])
                }
                .frame(maxWidth: .infinity, idealHeight: subgridHeight)
                
                // Yellow Tile
                VStack(alignment: .leading, spacing: 0) {
                    MoodSubgrid(selectedMood: $selectedMood,
                                gradient: yellowGradient,
                                emotions: ["Surprised", "Festive", "Ecstatic"])
                    MoodSubgrid(selectedMood: $selectedMood,
                                gradient: yellowGradient,
                                emotions: ["Energised", "Optimistic", "Excited"])
                    MoodSubgrid(selectedMood: $selectedMood,
                                gradient: yellowGradient,
                                emotions: ["Pleasant", "Hopeful", "Blissful"])
                }
                .frame(maxWidth: .infinity, idealHeight: subgridHeight)
                .background(
                )
            }
            GridRow {
                // Blue tile
                VStack(alignment: .leading, spacing: 0) {
                    MoodSubgrid(selectedMood: $selectedMood,
                                gradient: blueGradient,
                                emotions: ["Disgusted", "Down", "Apathetic"])
                    MoodSubgrid(selectedMood: $selectedMood,
                                gradient: blueGradient,
                                emotions: ["Miserable", "Lonely", "Tired"])
                    MoodSubgrid(selectedMood: $selectedMood,
                                gradient: blueGradient,
                                emotions: ["Despair", "Desolate", "Drained"])
                }
                .frame(maxWidth: .infinity, idealHeight: subgridHeight)
                .background(
                )
                
                // Green Tile
                VStack(alignment: .leading, spacing: 0) {
                    MoodSubgrid(selectedMood: $selectedMood,
                                gradient: greenGradient,
                                emotions: ["At ease", "Content", "Fulfilled"])
                    MoodSubgrid(selectedMood: $selectedMood,
                                gradient: greenGradient,
                                emotions: ["Relaxed", "Restful", "Balanced"])
                    MoodSubgrid(selectedMood: $selectedMood,
                                gradient: greenGradient,
                                emotions: ["Sleepy", "Tranquil", "Serene"])
                }
                .frame(maxWidth: .infinity, idealHeight: subgridHeight)
                .background(
                )
            }
        }
    }
}
