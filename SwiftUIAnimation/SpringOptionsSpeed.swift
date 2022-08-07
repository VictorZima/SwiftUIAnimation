//
//  SpringOptionsSpeed.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 07/08/2022.
//

import SwiftUI

struct SpringOptionsSpeed: View {
    @State private var change = false
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [.blue, .gray]), center: .center, startRadius: 10, endRadius: 400)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {
                TitleText("Spring Options")
                    .foregroundColor(.yellow)
                SubtitleText("Speed")
                
                Button("Start") {
                    self.change.toggle()
                }
                .accentColor(.yellow)
                
                Text("No speed modifier")
                Circle()
                    .fill(.yellow)
                    .frame(height: 70)
                    .offset(x: change ? 150 : -150)
                    .animation(.spring(response: 0.5, dampingFraction: 0.6), value: change)
                Text("2X Faster")
                Circle()
                    .fill(.yellow)
                    .frame(height: 70)
                    .offset(x: change ? 150 : -150)
                    .animation(.spring(response: 0.5, dampingFraction: 0.6).speed(2), value: change)
                Text("Half Slower")
                Circle()
                    .fill(.yellow)
                    .frame(height: 70)
                    .offset(x: change ? 150 : -150)
                    .animation(.spring(response: 0.5, dampingFraction: 0.6).speed(0.5), value: change)
            }
            .font(.title)
            .foregroundColor(.yellow)
        }
    }
}

struct SpringOptionsSpeed_Previews: PreviewProvider {
    static var previews: some View {
        SpringOptionsSpeed()
    }
}
