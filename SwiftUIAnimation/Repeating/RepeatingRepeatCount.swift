//
//  RepeatingRepeatCount.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 24/07/2022.
//

import SwiftUI

struct RepeatingRepeatCount: View {
    @State private var start = false
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Repeating")
            SubtitleText("Repeat Count")
            BannerText("You might want an animation to repeat only a certain number of times.", backColor: .green)
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
            .animation(.easeOut(duration: 0.6).repeatCount(3), value: start)
        }
        .font(.title)
        
    }
}

struct RepeatingRepeatCount_Previews: PreviewProvider {
    static var previews: some View {
        RepeatingRepeatCount()
    }
}
