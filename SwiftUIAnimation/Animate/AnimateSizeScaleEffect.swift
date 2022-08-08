//
//  AnimateSizeScaleEffect.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 16/07/2022.
//

import SwiftUI

struct AnimateSizeScaleEffect: View {
    @State private var change = false
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Animatable Properties")
            SubtitleText("Scale Effect")
            BannerText("You can animate the size of an object through the scaleEffect mmodifier values", backColor: .blue, textColor: .white)
            
            Button("Change") {
                self.change.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.blue)
                .padding()
                .scaleEffect(change ? 0.1 : 1)
                .animation(.easeInOut, value: change)
                //.border(Color.black)
            
            BannerText("Notice how scaleEffect does NOT modify the layout.", backColor: .blue, textColor: .white)
        }
        .font(.title)
    }
}

struct AnimateSizeScaleEffect_Previews: PreviewProvider {
    static var previews: some View {
        AnimateSizeScaleEffect()
    }
}
