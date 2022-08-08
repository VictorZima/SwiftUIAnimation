//
//  SpringOptionsDelay.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 07/08/2022.
//

import SwiftUI

struct SpringOptionsDelay: View {
    @State private var show = false
    @State private var largeScale = 5.0
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [.blue, .gray]), center: .center, startRadius: 10, endRadius: 400)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 40) {
                TitleText("Spring Options")
                    .foregroundColor(.yellow)
                SubtitleText("Delay")
                
                Button("Start") {
                    self.show.toggle()
                }
                .font(.title)
                .accentColor(.yellow)
                Spacer()
                HStack(spacing: 30) {
                    Group {
                        Image(systemName: "1.circle")
                            .opacity(show ? 1 : 0)
                            .scaleEffect(show ? 1 : largeScale)
                            .animation(.spring(response: 0.4, dampingFraction: 0.5), value: show)
                        Image(systemName: "2.circle")
                            .opacity(show ? 1 : 0)
                            .scaleEffect(show ? 1 : largeScale)
                            .animation(.spring(response: 0.4, dampingFraction: 0.5).delay(0.5), value: show)
                        Image(systemName: "3.circle")
                            .opacity(show ? 1 : 0)
                            .scaleEffect(show ? 1 : largeScale)
                            .animation(.spring(response: 0.4, dampingFraction: 0.5).delay(1), value: show)
                    }
                    .foregroundColor(.yellow)
                    .font(.system(size: 80))
                }
                
               Spacer()
            }
        }
    }
}

struct SpringOptionsDelay_Previews: PreviewProvider {
    static var previews: some View {
        SpringOptionsDelay()
    }
}
