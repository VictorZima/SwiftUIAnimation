//
//  SpringIntro.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 30/07/2022.
//

import SwiftUI

struct SpringIntro: View {
    @State private var show = false
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color.blue, Color.gray]), center: .center, startRadius: 10, endRadius: 400)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {
                TitleText("Sping")
                    .foregroundColor(.yellow)
                SubtitleText("Introduction")
                
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
                    .animation(.spring(), value: show)
                
                Button {
                    self.show.toggle()
                } label: {
                    Image(systemName: show ? "person.2.fill" : "person.2")
                        .foregroundColor(.yellow)
                        .font(.largeTitle)
                }
                .accentColor(Color.yellow)
            }
        }
    }
}

struct SpringIntro_Previews: PreviewProvider {
    static var previews: some View {
        SpringIntro()
    }
}
