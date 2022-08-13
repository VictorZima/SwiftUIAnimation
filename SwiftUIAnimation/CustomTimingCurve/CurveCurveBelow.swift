//
//  CurveCurveBelow.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 13/08/2022.
//

import SwiftUI

struct CurveCurveBelow: View {
    @State private var show = false
    
    var body: some View {
        ZStack {
            Color(.lightGray)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 10) {
                TitleText("Custom Timing Curve")
                    .foregroundColor(.yellow)
                SubtitleText("Curve Below")
                Spacer()
                
                Button("Send") {
                    withAnimation {
                        self.show = true
                    }
                }
                Spacer()
            }
            .font(.title)
            
            if show {
                VStack {
                    Text("Send a bike?")
                        .font(.title)
                    Image("reading.book.female")
                    HStack {
                        Button("Yes, send now") {
                            withAnimation(.timingCurve(0, -0.3, 1, 0, duration: 0.6)) {
                                self.show = false
                            }
                        }
                        .padding()
                        
                        Button("Cancel") {
                            self.show = false
                        }
                    }
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 20))
                .shadow(radius: 8)
                .transition(.slide)
                .zIndex(1)
            }
        }
    }
}

struct CurveCurveBelow_Previews: PreviewProvider {
    static var previews: some View {
        CurveCurveBelow()
    }
}
