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
    case supportServices
    case completionThoughtChallenging
    case completionThoughtRecording
    case completionAssessment
    case completionOnboarding
}

struct ContentView: View {
    @State var path: [appPages] = []
    @State var actionPlanForm = ActionPlanForm()
    
    var body: some View {
        NavigationStack(path: $path) {
            Welcome(path: $path, isFirstTime: false)
            .navigationDestination(for: appPages.self){ appPage in
                if appPage == .home {
                    VStack {
                        HomeHeader(path: $path)
                        Home(path: $path)
                    }
                    .navigationBarBackButtonHidden(true)
                }
                else if appPage == .actionPlan1 {
                    ThoughtRecord(path: $path, formData: $actionPlanForm)
                } else if appPage == .assessment1 {
                    Assessment(path: $path)
                } else if appPage == .actionPlan2 {
                    ThoughtChallenging(path: $path, formData: $actionPlanForm)
                } else if appPage == .supportServices {
                    SupportServices(path: $path)
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
                } else if appPage == .completionOnboarding {
                    CompletionScreen(path: $path,
                                     screenHeading: "Thank You!",
                                     screenDescription: "You’re all set up!\n\nIf you have any issues with this app please don’t hesitate to let your psychologist or the Sparrow HealthTech team know.\n\nWe hope you enjoy this app and it helps you in your mental health journey 🙂",
                                     screenImg: "completion-girl-road",
                                     screenButtonLabel: "Let's get started!")
                }
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    ContentView()
}
