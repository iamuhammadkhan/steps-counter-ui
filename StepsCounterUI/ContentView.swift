//
//  ContentView.swift
//  StepsCounterUI
//
//  Created by Muhammad Khan on 8/17/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            AngularGradient(
                gradient: Color.backgroundGradient,
                center: .bottomTrailing,
                startAngle: .degrees(170),
                endAngle: .degrees(270))
                .blur(radius: 70, opaque: true)
                    
            VStack {
                TopBarView()
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                    .padding(.top, 44)
                ProgressGoalView()
                    .padding(.top, 40)
                
                Spacer()
                InfoDashboardView()
                    .padding(.leading, 40)
                    .padding(.trailing, 40)
                        
                Spacer()
                PlayPauseView().padding(.bottom, 40)
            }
        }
        .edgesIgnoringSafeArea(.all)
        .environmentObject(StepCountManager())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
