//
//  AnimateSizeFrame.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 15/07/2022.
//

import SwiftUI

struct AnimateSizeFrame: View {
    @State private var change = false
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Animatable Properties")
            SubtitleText("Frame")
            BannerText("You can animate the size of an object through the frame modifier's height and width parameters.", backColor: .blue, textColor: .white)
            
            Button("Change") {
                self.change.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.blue)
                .frame(width: change ? 100 : 350, height: change ? 100 : 200)
                .scaleEffect(change ? 0.5 : 1)
                .animation(.easeInOut, value: change)
                //.border(Color.gray)
            
            BannerText("Notice how this changes the layout of the screen. You may want to consider animating with the scaleEffect instead.", backColor: .blue, textColor: .white)
        }
        .font(.title)
    }
}

struct AnimateSizeFrame_Previews: PreviewProvider {
    static var previews: some View {
        AnimateSizeFrame()
    }
}
