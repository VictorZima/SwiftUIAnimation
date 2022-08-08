//
//  InterpolatingOverlapping.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 07/08/2022.
//

import SwiftUI

struct InterpolatingOverlapping: View {
    @State private var degrees = 0.0
    @State private var taps = 0
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [.blue, .gray]), center: .center, startRadius: 10, endRadius: 400)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 40) {
                TitleText("Interpolating Spring")
                    .foregroundColor(.yellow)
                SubtitleText("Overlapping the Animation")
                
                Circle()
                    .fill(.yellow)
                    .frame(width: 300, height: 300)
                    .overlay(
                        Image(systemName: "arrow.up")
                            .offset(y: -120)
                            .rotationEffect(.degrees(degrees))
                            .animation(.interpolatingSpring(stiffness: 1, damping: 0.8), value: taps))
                            .onTapGesture {
                                self.degrees += 25
                                self.taps += 1
                            }
                    
                
                Text("Taps: \(taps)")
                    .foregroundColor(.yellow)
            }
            .font(.title)
        }
    }
}

struct InterpolatingOverlapping_Previews: PreviewProvider {
    static var previews: some View {
        InterpolatingOverlapping()
    }
}
