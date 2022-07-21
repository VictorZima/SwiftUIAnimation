//
//  TriggerGestureMagnification.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 21/07/2022.
//

import SwiftUI

struct TriggerGestureMagnification: View {
    @GestureState private var scale = 0.0
    @State private var endScale = 1.0
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Trigger")
            SubtitleText("Magnification Gesture")
            BannerText("Animation can smooth out the magnification of views.", backColor: .green)
            Text("Zoom In")
            
            Spacer()
            
            Image("day")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200)
                .scaleEffect(scale + endScale)
                .gesture(
                    MagnificationGesture()
                        .updating($scale, body: { (value, scale, transaction) in
                            scale = value.magnitude
                        })
                        .onEnded({ (value) in
                            self.endScale = value.magnitude + self.endScale
                        })
                )
                .animation(.default, value: scale)
            Spacer()
        }
        .font(.title)
    }
}

struct TriggerGestureMagnification_Previews: PreviewProvider {
    static var previews: some View {
        TriggerGestureMagnification()
    }
}
