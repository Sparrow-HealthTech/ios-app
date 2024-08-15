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
    case completionThoughtChallenging
    case completionThoughtRecording
    case completionAssessment
}

struct ContentView: View {
    @State var path: [appPages] = []
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                HomeHeader(path: $path)
                Home(path: $path)
            }
            .navigationDestination(for: appPages.self){ appPage in
                if appPage == .actionPlan1 {
                    ThoughtRecord(path: $path)
                } else if appPage == .assessment1 {
                    Assessment(path: $path)
                } else if appPage == .actionPlan2 {
                    ThoughtChallenging(path: $path)
                } else if appPage == .completionThoughtChallenging {
                    CompletionScreen(path: $path,
                                     screenHeading: "Well Done!",
                                     screenDescription: "You’re a step closer to breaking those negative thinking patterns!\n\nMaking a habit of doing this activity will help you along on your journey to good mental health 😊",
                                     screenImg: "completion-girl-road",
                                     screenButtonLabel: "Nice!")
                }
                else if appPage == .completionThoughtRecording {
                    CompletionScreen(path: $path,
                                     screenHeading: "Great Job!",
                                     screenDescription: "Writing down your thoughts in a journal consistently is a proven way to improve mental health!\n\nGood on you for accomplishing this today! 🥳",
                                     screenImg: "completion-girl-road",
                                     screenButtonLabel: "Awesome!")
                } else if appPage == .completionAssessment {
                    CompletionScreen(path: $path,
                                     screenHeading: "Thank You!",
                                     screenDescription: "The answers you gave here will really help your psychologist understand the state of your mental health and guide your treatment accordindly.\n\nGood on you for taking time out of your day to help your psychologist! 🤩",
                                     screenImg: "completion-girl-road",
                                     screenButtonLabel: "Awesome!")
                }
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

extension View {
    /// Applies the given transform if the given condition evaluates to `true`.
    /// - Parameters:
    ///   - condition: The condition to evaluate.
    ///   - transform: The transform to apply to the source `View`.
    /// - Returns: Either the original `View` or the modified `View` if the condition is `true`.
    @ViewBuilder func `if`<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
}

#Preview {
    ContentView()
}
