//
//  AnimateTrim.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 16/07/2022.
//

import SwiftUI

struct AnimateTrim: View {
    @State private var change = false
    @State private var circleProgress = 1.0
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Animatable Properties")
            SubtitleText("Trim")
            BannerText("Animating the trim of a circle is a great way to show progress.", backColor: .blue, textColor: .white)
            
            Button("Change") {
                self.change.toggle()
                self.circleProgress = self.change ? 0.25 : 1
            }
            
            Spacer()
            
            Circle()
                .trim(from: 0, to: circleProgress)
                .stroke(Color.blue, style: StrokeStyle(lineWidth: 40, lineCap: CGLineCap.round))
                .frame(height: 300)
                .rotationEffect(.degrees(-90))
                .padding()
                .animation(.default, value: change)
            
            Spacer()
        }
        .font(.title)
    }
}

struct AnimateTrim_Previews: PreviewProvider {
    static var previews: some View {
        AnimateTrim()
    }
}
