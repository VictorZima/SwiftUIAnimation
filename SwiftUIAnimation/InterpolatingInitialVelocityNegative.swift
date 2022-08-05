//
//  InterpolatingInitialVelocityNegative.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 05/08/2022.
//

import SwiftUI

struct InterpolatingInitialVelocityNegative: View {
    @State private var show = false
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [.blue, .gray]), center: .center, startRadius: 10, endRadius: 400)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 10) {
                TitleText("Interpolating Spring")
                    .foregroundColor(.yellow)
                SubtitleText("Negative Initial Velocity")
                
                HStack {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.yellow)
                        .shadow(radius: 10)
                        .overlay (
                            VStack {
                                Text("Make Bigger!")
                                    
                            }
                        )
                        .aspectRatio(CGSize(width: 1, height: 1.5), contentMode: .fit)
                        .padding()
                        .scaleEffect(show ? 2 : 1, anchor: .leading)
                        .zIndex(1)
                        .animation(.interpolatingSpring(stiffness: 100, damping: 10, initialVelocity: -10), value: show)
                        .onTapGesture {
                            self.show.toggle()
                        }
                    
                    Text("Notice the rectangle gets smaller first before it gets bigger.")
                }
                .font(.system(size: 20))
                .foregroundColor(.white)
            }
            .font(.title)
        }
    }
}

struct InterpolatingInitialVelocityNegative_Previews: PreviewProvider {
    static var previews: some View {
        InterpolatingInitialVelocityNegative()
    }
}
