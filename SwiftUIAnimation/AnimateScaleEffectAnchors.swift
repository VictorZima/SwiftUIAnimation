//
//  AnimateScaleEffectAnchors.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 16/07/2022.
//

import SwiftUI

struct AnimateScaleEffectAnchors: View {
    @State private var change = false
    var body: some View {
        VStack(spacing: 10) {
            TitleText("Animatable Properties")
            SubtitleText("Scale From Anchors")
            BannerText("You can scale around an anchor of your choosing. The default is scaling from the center anchor.", backColor: .blue, textColor: .white)
            
            Button("Change") {
                self.change.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .overlay(Text("Scale from top").foregroundColor(.white))
                .scaleEffect(change ? 1 : 0.25, anchor: .top)
                .animation(.default, value: change)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .overlay(Text("Scale from right").foregroundColor(.white))
                .scaleEffect(change ? 0.25 : 1, anchor: .trailing)
                .animation(.default, value: change)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .overlay(Text("Scale from bottom left").foregroundColor(.white))
                .scaleEffect(change ? 1 : 0.5, anchor: .bottomLeading)
                .animation(.default, value: change)
        }
        .font(.title)
    }
}

struct AnimateScaleEffectAnchors_Previews: PreviewProvider {
    static var previews: some View {
        AnimateScaleEffectAnchors()
    }
}
