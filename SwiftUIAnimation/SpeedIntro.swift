//
//  SpeedIntro.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 30/07/2022.
//

import SwiftUI

struct SpeedIntro: View {
    @State private var change = false
    let duration = 1.0
    let screenWidth = (UIScreen.main.bounds.width / 2) - 70
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Speed")
            SubtitleText("Introduction")
            
            Button("Change") {
                self.change.toggle()
            }
            
            Text("Normal")
            Circle()
                .fill(Color.orange)
                .frame(height: 70)
                .offset(x: change ? screenWidth : -screenWidth)
                .animation(.easeInOut(duration: duration), value: change)
            
            Text("2x Faster")
            Circle()
                .fill(Color.orange)
                .frame(height: 70)
                .offset(x: change ? screenWidth : -screenWidth)
                .animation(.easeInOut(duration: duration).speed(2), value: change)
            
            Text("Half Slower")
            Circle()
                .fill(Color.orange)
                .frame(height: 70)
                .offset(x: change ? screenWidth : -screenWidth)
                .animation(.easeInOut(duration: duration).speed(0.5), value: change)
        }
        .font(.title)
    }
}

struct SpeedIntro_Previews: PreviewProvider {
    static var previews: some View {
        SpeedIntro()
    }
}
