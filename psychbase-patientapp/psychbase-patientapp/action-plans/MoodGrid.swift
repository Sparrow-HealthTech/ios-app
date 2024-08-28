//
//  MoodGrid.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 13/8/2024.
//

import SwiftUI

struct MoodGrid: View {
    @Binding var formData: ActionPlanForm
    @State var selectedMoods: [String] = []
    
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
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(["Enraged", "Stressed", "Shocked"], id: \.self){mood in
                            MoodTile(formData: $formData,
                                     selectedMoods: $selectedMoods,
                                     gradient: redGradient,
                                     mood: mood)
                        }
                    }
                    .padding(0)
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(["Fuming", "Angry", "Restless"], id: \.self){mood in
                            MoodTile(formData: $formData,
                                     selectedMoods: $selectedMoods,
                                     gradient: redGradient,
                                     mood: mood)
                        }
                    }
                    .padding(0)
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(["Repulsed", "Worried", "Uneasy"], id: \.self){mood in
                            MoodTile(formData: $formData,
                                     selectedMoods: $selectedMoods,
                                     gradient: redGradient,
                                     mood: mood)
                        }
                    }
                    .padding(0)
                }
                .frame(maxWidth: .infinity, idealHeight: subgridHeight)
                
                // Yellow Tile
                VStack(alignment: .leading, spacing: 0) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(["Surprised", "Festive", "Ecstatic"], id: \.self){mood in
                            MoodTile(formData: $formData,
                                     selectedMoods: $selectedMoods,
                                     gradient: yellowGradient,
                                     mood: mood)
                        }
                    }
                    .padding(0)
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(["Energised", "Optimistic", "Excited"], id: \.self){mood in
                            MoodTile(formData: $formData,
                                     selectedMoods: $selectedMoods,
                                     gradient: yellowGradient,
                                     mood: mood)
                        }
                    }
                    .padding(0)
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(["Pleasant", "Hopeful", "Blissful"], id: \.self){mood in
                            MoodTile(formData: $formData,
                                     selectedMoods: $selectedMoods,
                                     gradient: yellowGradient,
                                     mood: mood)
                        }
                    }
                    .padding(0)
                }
                .frame(maxWidth: .infinity, idealHeight: subgridHeight)
                .background(
                )
            }
            GridRow {
                // Blue tile
                VStack(alignment: .leading, spacing: 0) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(["Disgusted", "Down", "Apathetic"], id: \.self){mood in
                            MoodTile(formData: $formData,
                                     selectedMoods: $selectedMoods,
                                     gradient: blueGradient,
                                     mood: mood)
                        }
                    }
                    .padding(0)
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(["Miserable", "Lonely", "Tired"], id: \.self){mood in
                            MoodTile(formData: $formData,
                                     selectedMoods: $selectedMoods,
                                     gradient: blueGradient,
                                     mood: mood)
                        }
                    }
                    .padding(0)
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(["Despair", "Desolate", "Drained"], id: \.self){mood in
                            MoodTile(formData: $formData,
                                     selectedMoods: $selectedMoods,
                                     gradient: blueGradient,
                                     mood: mood)
                        }
                    }
                    .padding(0)
                }
                .frame(maxWidth: .infinity, idealHeight: subgridHeight)
                .background(
                )
                
                // Green Tile
                VStack(alignment: .leading, spacing: 0) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(["At ease", "Content", "Fulfilled"], id: \.self){mood in
                            MoodTile(formData: $formData,
                                     selectedMoods: $selectedMoods,
                                     gradient: greenGradient,
                                     mood: mood)
                        }
                    }
                    .padding(0)
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(["Relaxed", "Restful", "Balanced"], id: \.self){mood in
                            MoodTile(formData: $formData,
                                     selectedMoods: $selectedMoods,
                                     gradient: greenGradient,
                                     mood: mood)
                        }
                    }
                    .padding(0)
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(["Sleepy", "Tranquil", "Serene"], id: \.self){mood in
                            MoodTile(formData: $formData,
                                     selectedMoods: $selectedMoods,
                                     gradient: greenGradient,
                                     mood: mood)
                        }
                    }
                    .padding(0)
                }
                .frame(maxWidth: .infinity, idealHeight: subgridHeight)
                .background(
                )
            }
        }
    }
}
