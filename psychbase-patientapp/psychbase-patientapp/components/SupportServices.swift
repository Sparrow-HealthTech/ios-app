//
//  SupportServices.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 16/8/2024.
//

import SwiftUI

struct SupportServices: View {
    @Binding var path: [appPages]
    
    let heading = "Support Services"
    let lifelineTxt = "Lifeline provides 24-hour crisis counselling, support groups and suicide prevention services.\n\nCall [13-11-14](tel:131114) | Text [0477-131-114](0477131114) | Chat [Online](https://www.lifeline.org.au/crisis-chat/)"
    let suicideCallbackTxt = "Suicide Call Back Service provides 24/7 support if you or someone you know is feeling suicidal.\n\nCall [1300-659-467](tel:1300659467)"
    let beyondBlueTxt = "Beyond Blue aims to increase awareness of depression and anxiety and reduce stigma.\n\nIf you or a loved one need help, you can call [1300-22-4636](tel:1300224636) anytime or [chat online](https://www.beyondblue.org.au/get-support/talk-to-a-counsellor/chat)."
    
    func goBack(){
        path.removeLast()
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 50) {
            // Heading
            HStack(spacing: 0) {
                Button(action: goBack) {
                    Image("back-button")
                        .resizable()
                        .frame(width: 24, height: 24)
                }
                .frame(alignment: .leading)
                .padding(.leading)
                Text(heading)
                    .font(
                        Font.custom("Quicksand", size: 20)
                            .weight(.bold)
                    )
                    .foregroundColor(Color(red: 0.17, green: 0.63, blue: 0.28))
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.trailing)
            }
            .padding(.top, 20)
            
            SupportServiceTile(tileTxt: Text(.init(lifelineTxt)),
                               logoImg: "lifeline-logo",
                               imgDims: [132, 40])
            SupportServiceTile(tileTxt: Text(.init(suicideCallbackTxt)),
                               logoImg: "suicide-callback-logo",
                               imgDims: [92, 48])
            SupportServiceTile(tileTxt: Text(.init(beyondBlueTxt)),
                               logoImg: "beyondblue-logo",
                               imgDims: [126, 47])
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(.white)
        .cornerRadius(16)
        .shadow(radius: 5)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .inset(by: 0.5)
                .stroke(
                    LinearGradient(
                        colors: [.red, .orange, .yellow, .green, .blue, .purple],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing),
                    lineWidth: 1)
        )
        .padding(20)
        .navigationBarBackButtonHidden(true)
    }
}

struct SupportServicesPreview: PreviewProvider {
    @State static var path = [appPages.home]
    static var previews: some View {
        SupportServices(path: $path)
    }
}
