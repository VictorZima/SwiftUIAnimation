//
//  Animate_Huerotation.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 12/07/2022.
//

import SwiftUI

struct Animate_Huerotation: View {
    @State private var change = false
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Animatable Properties")
            SubtitleText("Hue")
            BannerText("Another way to change...", backColor: .blue, textColor: .white)
            Image("ColorWheel")
                .resizable()
                .frame(width: 200, height: 200)
                .hueRotation(Angle.degrees(change ? 170 : 0))
                .animation(.easeInOut(duration: 3), value: change)
            HStack {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.blue)
                    .padding()
                    .hueRotation(Angle.degrees(change ? 170 : 0))
                    .animation(.easeInOut(duration: 3), value: change)
                Image("Umbrella")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .hueRotation(Angle.degrees(change ? 170 : 0))
                    .animation(.easeInOut(duration: 3), value: change)
            }
            Button("Change") {
                self.change.toggle()
            }
        }
        .font(.title)
    }
}

struct Animate_Huerotation_Previews: PreviewProvider {
    static var previews: some View {
        Animate_Huerotation()
    }
}
