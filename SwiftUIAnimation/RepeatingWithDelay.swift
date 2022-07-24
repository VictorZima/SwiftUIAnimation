//
//  RepeatingWithDelay.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 24/07/2022.
//

import SwiftUI

struct RepeatingWithDelay: View {
    @State private var start = false
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Repeating")
            SubtitleText("Repeat With Delay")
            BannerText("You can add a delay between each repeat of the animation. You want to add the delay modifier BEFORE the repeat modifier.", backColor: .green)
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
            .animation(.easeOut(duration: 0.6).delay(1).repeatForever(autoreverses: false), value: start)
            Spacer()
        }
        .font(.title)
        
    }
}

struct RepeatingWithDelay_Previews: PreviewProvider {
    static var previews: some View {
        RepeatingWithDelay()
    }
}
