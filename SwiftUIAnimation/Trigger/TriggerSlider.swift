//
//  TriggerSlider.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 19/07/2022.
//

import SwiftUI

struct TriggerSlider: View {
    @State private var blueWidth = 50.0
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Triggers")
            SubtitleText("Slider")
            BannerText("When adjusting a slider, there may be some |UI element you are changing that can be animated", backColor: .green)
            
            HStack(spacing: 0) {
                Color.blue
                    .frame(width: blueWidth)
                Color.green
            }
            .animation(.default, value: blueWidth)
            
            Slider(value: $blueWidth, in: 0...UIScreen.main.bounds.width, step: 1)
                .padding()
        }
        .font(.title)
    }
}

struct TriggerSlider_Previews: PreviewProvider {
    static var previews: some View {
        TriggerSlider()
    }
}
