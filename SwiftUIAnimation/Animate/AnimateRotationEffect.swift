//
//  AnimateRotationEffect.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 15/07/2022.
//

import SwiftUI

struct AnimateRotationEffect: View {
    @State private var change = false
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Animatable Properties")
            SubtitleText("Rotation Effect")
            BannerText("Rotations are also animatable.", backColor: .blue, textColor: .white)
            
            Button {
                self.change.toggle()
            } label: {
                Text("Change")
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.blue)
                .frame(width: 300, height: 200)
                .overlay(Image(systemName: "arrow.right").foregroundColor(.black))
                .rotationEffect(Angle.degrees(change ? 220 : 0))
                .animation(.easeInOut, value: change)
            Spacer()
        }
        .font(.title)
    }
}

struct AnimateRotationEffect_Previews: PreviewProvider {
    static var previews: some View {
        AnimateRotationEffect()
    }
}
