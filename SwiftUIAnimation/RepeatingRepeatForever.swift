//
//  RepeatingRepeatForever.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 24/07/2022.
//

import SwiftUI

struct RepeatingRepeatForever: View {
    @State private var start = false
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Repeating")
            SubtitleText("Repeat Forever")
            BannerText("You learned how to repeat a number of times, but what if you wanted to repeat forever once started? There's a modifier for that too!", backColor: .green)
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
            .animation(.easeOut(duration: 0.6).repeatForever(), value: start)
            Spacer()
        }
        .font(.title)
        
    }
}

struct RepeatingRepeatForever_Previews: PreviewProvider {
    static var previews: some View {
        RepeatingRepeatForever()
    }
}
