//
//  AnimateTextSizeScaleEffect.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 16/07/2022.
//

import SwiftUI

struct AnimateTextSizeScaleEffect: View {
    @State private var change = false
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Animatable Properties")
            SubtitleText("Text Size with ScaleEffect")
            BannerText("Let's try to scale the text view instead.", backColor: .blue, textColor: .white)
            
            Button("Change") {
                self.change.toggle()
            }
            
            Spacer()
            
            Text("Hello")
                .font(.system(size: 20))
                .scaleEffect(change ? 4 : 1)
                .animation(.easeInOut, value: change)
                .border(Color.gray)
            
            Spacer()
        }
        .font(.title)
    }
}

struct AnimateTextSizeScaleEffect_Previews: PreviewProvider {
    static var previews: some View {
        AnimateTextSizeScaleEffect()
    }
}
