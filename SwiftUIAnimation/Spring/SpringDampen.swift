//
//  SpringDampen.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 31/07/2022.
//

import SwiftUI

struct SpringDampen: View {
    @State private var show = false
    @State private var dampingFraction = 0.825
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color.blue, Color.gray]), center: .center, startRadius: 10, endRadius: 400)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 10) {
                TitleText("Sping")
                    .foregroundColor(.yellow)
                SubtitleText("Dampen")
                
                RoundedRectangle(cornerRadius: 40)
                    .fill(Color.yellow)
                    .overlay(
                        Image(systemName: "iphone.badge.play")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .scaleEffect(0.5)
                            .rotationEffect(Angle.degrees(-30))
                    )
                    .padding()
                    .scaleEffect(show ? 1 : 0.01, anchor: .bottom)
                    .opacity(show ? 1 : 0)
                    .animation(.spring(dampingFraction: self.dampingFraction), value: show)
                
                Button {
                    self.show.toggle()
                } label: {
                    Image(systemName: show ? "person.2.fill" : "person.2")
                        .foregroundColor(.yellow)
                        .font(.largeTitle)
                }
                .accentColor(Color.yellow)
                
                HStack {
                    Image(systemName: "0.circle.fill")
                    Slider(value: $dampingFraction)
                    Image(systemName: "1.circle.fill")
                }
                .foregroundColor(.yellow)
                .padding()
            }
        }
    }
}

struct SpringDampen_Previews: PreviewProvider {
    static var previews: some View {
        SpringDampen()
    }
}
