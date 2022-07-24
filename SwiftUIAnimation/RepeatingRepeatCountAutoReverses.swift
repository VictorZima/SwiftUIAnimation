//
//  RepeatingRepeatCountAutoReverses.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 24/07/2022.
//

import SwiftUI

struct RepeatingRepeatCountAutoReverses: View {
    @State private var start = false
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Repeating")
            SubtitleText("Repeat Count Auto-Reverses")
            BannerText("Auto-Reverse is true by default. It's an optional parameter that you can set to false.", backColor: .green)
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
            .animation(.easeOut(duration: 0.6).repeatCount(3, autoreverses: false), value: start)
        }
        .font(.title)
        
    }
}

struct RepeatingRepeatCountAutoReverses_Previews: PreviewProvider {
    static var previews: some View {
        RepeatingRepeatCountAutoReverses()
    }
}
