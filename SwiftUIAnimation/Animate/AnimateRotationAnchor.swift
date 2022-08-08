//
//  AnimateRotationAnchor.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 15/07/2022.
//

import SwiftUI

struct AnimateRotationAnchor: View {
    @State private var change = false
    var body: some View {
        VStack(spacing: 15) {
            TitleText("Animatable Properties")
            SubtitleText("Rotation Around Anchor")
            BannerText("You can rotate around an anchor of your choosing. The default is rotating around the center anchor.", backColor: .blue, textColor: .white)
            
            Button {
                self.change.toggle()
            } label: {
                Text("Change")
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .shadow(radius: 8)
                .frame(width: 320, height: 200)
                .overlay(Text("Rotate from top left").foregroundColor(.white))
                .rotationEffect(Angle.degrees(change ? 220 : 0), anchor: .topLeading)
                .animation(.easeInOut, value: change)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .shadow(radius: 8)
                .frame(width: 320, height: 200)
                .overlay(Text("Rotate from bobttom right").foregroundColor(.white))
                .rotationEffect(Angle.degrees(change ? 220 : 0), anchor: .bottomTrailing)
                .animation(.easeInOut, value: change)
            
            Spacer()
        }
        .font(.title)
    }
}

struct AnimateRotationAnchor_Previews: PreviewProvider {
    static var previews: some View {
        AnimateRotationAnchor()
    }
}
