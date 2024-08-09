//
//  ContentView.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 7/7/2024.
//

import SwiftUI

enum appPages {
    case home
    case actionPlan1
    case assessment1
    case actionPlan2
}

struct ContentView: View {
    @State var path: [appPages] = []
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                HomeHeader()
                Home(path: $path)
            }
            .navigationDestination(for: appPages.self){ appPage in
                if appPage == .actionPlan1 {
                    ThoughtRecord(path: $path)
                } else if appPage == .assessment1 {
                    Assessment(path: $path)
                } else if appPage == .actionPlan2 {
                    ThoughtChallenging(path: $path)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
