//
//  CurveCurveAbove.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 13/08/2022.
//

import SwiftUI

struct CurveCurveAbove: View {
    @State private var show = false
    
    var body: some View {
        ZStack {
            Color(.lightGray)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 10) {
                TitleText("Custom Timing Curve")
                    .foregroundColor(.yellow)
                SubtitleText("Curve Above")
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
                        .resizable()
                        .frame(width: 200, height: 200)
                    HStack {
                        Button("Yes, send now") {
                            withAnimation(.timingCurve(0, 0, 0, 1.5, duration: 0.8)) {
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

struct CurveCurveAbove_Previews: PreviewProvider {
    static var previews: some View {
        CurveCurveAbove()
    }
}
