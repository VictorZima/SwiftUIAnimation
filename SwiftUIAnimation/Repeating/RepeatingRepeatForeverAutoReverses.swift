//
//  RepeatingRepeatForeverAutoReverses.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 24/07/2022.
//

import SwiftUI

struct RepeatingRepeatForeverAutoReverses: View {
    @State private var start = false
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Repeating")
            SubtitleText("Repeat Forever: No Auto-Reverses")
            BannerText("There is an optional autoreverses parameter that is set to true by default. Let's set it to false so the animation just goes one direction.", backColor: .green)
            Spacer()
            
            Button("Start") {
                self.start.toggle()
            }
            .font(.largeTitle)
            .padding()
            .foregroundColor(.white)
            .background(RoundedRectangle(cornerRadius: 10).fill(Color.green))
            .overlay (
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.green, lineWidth: 4)
                    .scaleEffect(start ? 2 : 1)
                    .opacity(start ? 0 : 1)
            )
            .animation(.easeOut(duration: 0.6).repeatForever(autoreverses: false), value: start)
        }
        .font(.title)
        
    }
}

struct RepeatingRepeatForeverAutoReverses_Previews: PreviewProvider {
    static var previews: some View {
        RepeatingRepeatForeverAutoReverses()
    }
}
