//
//  SpringOptionsRepeating.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 07/08/2022.
//

import SwiftUI

struct SpringOptionsRepeating: View {
    @State private var change = false
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [.blue, .gray]), center: .center, startRadius: 10, endRadius: 400)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 10) {
                TitleText("Spring Options")
                    .foregroundColor(.yellow)
                SubtitleText("Repeat")
                
                Button("Start") {
                    self.change.toggle()
                }
                .foregroundColor(.white)
                
                Group {
                    Text("Using dampingFraction = 0")
                    Text("Spring animation")
                        .font(.body)
                        .foregroundColor(.white)
                    Circle()
                        .fill(.yellow)
                        .frame(height: 50)
                        .offset(x: change ? 20 : -20)
                        .animation(.spring(response: 1, dampingFraction: 0), value: change)
                    Text("Using dampingFraction = 0")
                    Text("InterpolatingSpring animation")
                        .font(.body)
                        .foregroundColor(.white)
                    Circle()
                        .fill(.yellow)
                        .frame(height: 50)
                        .offset(x: change ? 40 : -40)
                        .animation(.interpolatingSpring(stiffness: 40, damping: 0), value: change)
                    Text("Repeat 3 times")
                        .font(.body)
                        .foregroundColor(.white)
                    Circle()
                        .fill(.yellow)
                        .frame(height: 50)
                        .offset(x: change ? 40 : -40)
                        .animation(.spring(response: 0.5, dampingFraction: 0.5).repeatCount(3), value: change)
                    Text("Repeat Forever")
                        .font(.body)
                        .foregroundColor(.white)
                    Circle()
                        .fill(.yellow)
                        .frame(height: 50)
                        .offset(x: change ? 40 : -40)
                        .animation(.spring(response: 0.5, dampingFraction: 0.5).repeatForever(), value: change)
                }

            }
            .font(.title)
            .foregroundColor(.yellow)
        }
    }
}

struct SpringOptionsRepeating_Previews: PreviewProvider {
    static var previews: some View {
        SpringOptionsRepeating()
    }
}
