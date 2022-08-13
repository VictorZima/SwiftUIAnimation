//
//  CurveTimingCurveModifier.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 13/08/2022.
//

import SwiftUI

struct CurveTimingCurveModifier: View {
    @State private var change = false
    
    var body: some View {
        ZStack {
            Color(.lightGray)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 10) {
                TitleText("Custom Timing Curve")
                    .foregroundColor(.yellow)
                SubtitleText("Introduction")
                Spacer()
                
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.yellow)
                    .frame(width: 100, height: 100)
                    .overlay(Text("Linear"))
                    .offset(x: change ? 140 : -140, y: 0)
                    .animation(.linear(duration: 1), value: change)
                
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.yellow)
                    .frame(width: 100, height: 100)
                    .overlay(Text("Custom"))
                    .offset(x: change ? 140 : -140, y: 0)
                    .animation(.timingCurve(0.1, 0.7, 0.9, 0.3, duration: 1), value: change)
                Spacer()
                Button {
                    self.change.toggle()
                } label: {
                    Text("Change")
                        .foregroundColor(.yellow)
                }
                .font(.title)
            }
        }
    }
}

struct CurveTimingCurveModifier_Previews: PreviewProvider {
    static var previews: some View {
        CurveTimingCurveModifier()
    }
}
