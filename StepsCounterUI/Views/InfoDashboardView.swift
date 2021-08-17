//
//  InfoDashboardView.swift
//  StepsCounterUI
//
//  Created by Muhammad Khan on 8/17/21.
//

import SwiftUI

struct InfoDashboardView: View {
    
    @EnvironmentObject var manager: StepCountManager
    
    var body: some View {
        HStack {
            DataItemView(dataItem: manager.statData[0])
            Spacer()
                
            Rectangle()
                .fill(Color.white)
                .frame(width: 1, height: 200)
                .opacity(0.2)
                
            Spacer()
            DataItemView(dataItem: manager.statData[1])
            Spacer()
                
            Rectangle()
                .fill(Color.white)
                .frame(width: 1, height: 200)
                .opacity(0.2)
                
            Spacer()
            DataItemView(dataItem: manager.statData[2])
        }
    }
}
