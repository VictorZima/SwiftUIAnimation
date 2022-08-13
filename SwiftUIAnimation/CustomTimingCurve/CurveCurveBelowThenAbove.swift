//
//  CurveCurveBelowThenAbove.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 13/08/2022.
//

import SwiftUI

struct CurveCurveBelowThenAbove: View {
    @State private var show = false
    
    var body: some View {
        ZStack {
            Color(.lightGray)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 10) {
                TitleText("Custom Timing Curve")
                    .foregroundColor(.yellow)
                SubtitleText("Curve Below And Above")
                Spacer()
                
                HStack {
                    HStack(spacing: 30) {
                        Button {
                            
                        } label: {
                            Image(systemName: "wand.and.rays.inverse")
                                .padding(.leading, 40)
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "dial.fill")
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "paintbrush.fill")
                        }

                        Button {
                            
                        } label: {
                            Image(systemName: "bandage.fill")
                        }
                        
                        Button {
                            self.show.toggle()
                        } label: {
                            Image(systemName: "line.horizontal.3.decrease")
                        }
                        .rotationEffect(.degrees(-90))
                        .offset(x: 10)
                    }
                    .font(.largeTitle)
                    .padding(30)
                    .background(Capsule().fill(Color(.yellow)))
                    .offset(x: self.show ? -60 : -340)
                    .animation(.timingCurve(0.5, -0.5, 0.5, 1.5), value: show)
                    Spacer()
                }
            }
            .font(.title)
        }
    }
}

struct CurveCurveBelowThenAbove_Previews: PreviewProvider {
    static var previews: some View {
        CurveCurveBelowThenAbove()
    }
}
