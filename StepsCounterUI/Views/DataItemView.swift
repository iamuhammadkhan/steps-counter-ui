//
//  DataItemView.swift
//  StepsCounterUI
//
//  Created by Muhammad Khan on 8/17/21.
//

import SwiftUI

struct DataItemView: View {
    
    let dataItem: DataItem
    
    var body: some View {
        VStack {
            Image(systemName: dataItem.imageName)
                .foregroundColor(dataItem.imageColor)
                .font(.system(size: 48))
                .shadow(color: dataItem.imageColor.opacity(0.5), radius: 10, x: 4, y: 24)
                
            Text(dataItem.value)
                .font(.system(size: 36, design: .monospaced))
                .fixedSize()
                .frame(width: 60)
                .padding(.top, 20)
                .padding(.bottom, 10)
                
            Text(dataItem.unit)
                .font(.system(size: 22))
        }.foregroundColor(.white)
    }
}
