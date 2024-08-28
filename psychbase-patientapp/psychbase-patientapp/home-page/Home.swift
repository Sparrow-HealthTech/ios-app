//
//  HomeView.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 7/7/2024.
//

import SwiftUI

struct Home: View {
    @Binding var path: [appPages]
    @Binding var actionPlanTileData: ModuleTileData
    @Binding var assessmentTileData: ModuleTileData
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            Divider()
            VStack(alignment: .leading, spacing: 16) {
                ScrollView(){
                    VStack(spacing: 20){
                        Spacer()
                        ModuleTile(path: $path, tileData: $actionPlanTileData)
                        ModuleTile(path: $path, tileData: $assessmentTileData)
                    }
                }
            }
            .padding(.horizontal, 16)
            .frame(maxWidth: .infinity, alignment: .topLeading)
        }
        .frame(maxWidth: .infinity, alignment: .topLeading)
        .background(Color(red: 0.95, green: 0.95, blue: 0.95))
    }
}

struct HomePreview: PreviewProvider {
    @State static var path = [appPages.home]
    @State static var actionPlanTileData  = ModuleTileData(type: .actionPlan)
    @State static var assessmentTileData  = ModuleTileData(type: .assessment)
    static var previews: some View {
        Home(path: $path, actionPlanTileData: $actionPlanTileData, assessmentTileData: $assessmentTileData)
    }
}
