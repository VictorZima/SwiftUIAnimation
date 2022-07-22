//
//  DurationParameter.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 23/07/2022.
//

import SwiftUI

struct DurationParameter: View {
    @State private var change = false
    
    var body: some View {
        VStack(spacing: 10) {
            TitleText("Animation Option")
            SubtitleText("Duration Parrameter")
            BannerText("To set a duration, you need to turn the animation type into a function. Like .easeInOut into .easyInOut(duration: 1).", backColor: .purple, textColor: .white)
            
            Text("Duration: Default")
            Image(systemName: "hare.fill")
                .foregroundColor(.purple)
                .frame(width: 100, height: 100)
                .offset(x: change ? 140 : -140, y: 0)
                .animation(.easeOut, value: change)
            
            Text("Duration: 2 Seconds")
            Image(systemName: "tortoise.fill")
                .foregroundColor(.purple)
                .frame(width: 100, height: 100)
                .offset(x: change ? 140 : -140, y: 0)
                .animation(.easeOut(duration: 2), value: change)
            
            Button("Change") {
                self.change.toggle()
            }
        }
    }
}

struct DurationParameter_Previews: PreviewProvider {
    static var previews: some View {
        DurationParameter()
    }
}
