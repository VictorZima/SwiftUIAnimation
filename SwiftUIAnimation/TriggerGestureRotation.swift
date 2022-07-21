//
//  TriggerGestureRotation.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 21/07/2022.
//

import SwiftUI

struct TriggerGestureRotation: View {
    @State private var degrees = 0.0
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Triggers")
            SubtitleText("Rotation Gesture")
            Spacer()
            Group {
                Image(systemName: "gear")
                    .font(.system(size: 200))
                    .rotationEffect(Angle.degrees(degrees))
                    .gesture(RotationGesture()
                        .onChanged({ (angle) in
                            self.degrees = angle.degrees
                        })
                    )
                    .animation(.default, value: degrees)
                
                Image(systemName: "gear")
                    .font(.system(size: 120))
                    .rotationEffect(-Angle.degrees(degrees))
                    .offset(x: 70, y: -58)
                    .animation(.default, value: degrees)
                
                Image(systemName: "gear")
                    .font(.system(size: 60))
                    .rotationEffect(Angle.degrees(degrees))
                    .offset(x: -10, y: -130)
                    .animation(.default, value: degrees)
                
            }
            .foregroundColor(.green)
            Spacer()
        }
        .font(.title)
    }
}

struct TriggerGestureRotation_Previews: PreviewProvider {
    static var previews: some View {
        TriggerGestureRotation()
    }
}
