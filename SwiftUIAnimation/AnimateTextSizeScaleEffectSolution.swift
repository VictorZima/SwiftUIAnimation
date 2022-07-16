//
//  AnimateTextSizeScaleEffectSolution.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 16/07/2022.
//

import SwiftUI

struct AnimateTextSizeScaleEffectSolution: View {
    @State private var change = false
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Animatable Properties")
            SubtitleText("Text Size with ScaleEffect")
            BannerText("Start with the larger font size first (so it's clear) and then scale it down as the begin state.", backColor: .blue, textColor: .white)
            
            Button("Change") {
                self.change.toggle()
            }
            
            Spacer()
            
            Text("Hello!")
                .font(.system(size: 80))
                .scaleEffect(change ? 1 : 0.25)
                .animation(.easeInOut, value: change)
                .border(Color.gray)
            
            Spacer()
        }
        .font(.title)
    }
}

struct AnimateTextSizeScaleEffectSolution_Previews: PreviewProvider {
    static var previews: some View {
        AnimateTextSizeScaleEffectSolution()
    }
}
