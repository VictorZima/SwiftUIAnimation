//
//  SpringBlendDuration.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 31/07/2022.
//

import SwiftUI

struct SpringBlendDuration: View {
    @State private var change = false
    @State private var response = 2.0
    @State private var blendDuration = 1.0
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color.blue, Color.gray]), center: .center, startRadius: 10, endRadius: 400)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 10) {
                TitleText("Sping")
                    .foregroundColor(.yellow)
                SubtitleText("Blend Duration")
                
                Circle()
                    .scaleEffect(change ? 0.2 : 1)
                    .animation(.spring(response: self.response, dampingFraction: 0.5, blendDuration: self.blendDuration), value: change)
                
                Text("Response")
                    .padding(.top)
                
                HStack {
                    Image(systemName: "1.circle.fill")
                    Slider(value: $response, in: 1...2)
                    Image(systemName: "2.circle.fill")
                }
                
                HStack {
                    Image(systemName: "0.circle.fill")
                    Slider(value: $blendDuration, in: 0...2)
                    Image(systemName: "2.circle.fill")
                }
                
                Button("Change") {
                    self.change.toggle()
                }
                .foregroundColor(.yellow)
                
            }
            .font(.title)
            .foregroundColor(.yellow)
            .padding(.horizontal)
        }
    }
}

struct SpringBlendDuration_Previews: PreviewProvider {
    static var previews: some View {
        SpringBlendDuration()
    }
}
