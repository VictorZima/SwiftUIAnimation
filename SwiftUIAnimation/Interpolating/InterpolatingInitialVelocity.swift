//
//  InterpolatingInitialVelocity.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 05/08/2022.
//

import SwiftUI

struct InterpolatingInitialVelocity: View {
    @State private var change = false
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [.blue, .gray]), center: .center, startRadius: 10, endRadius: 400)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 10) {
                TitleText("Interpolating Spring")
                    .foregroundColor(.yellow)
                SubtitleText("Initial Velocity")
                
                Button("Compare Mass") {
                    self.change.toggle()
                }
                HStack(alignment: .bottom, spacing: 40) {
                    VStack {
                        Text("0")
                            .bold()
                        Spacer()
                        Rectangle()
                            .fill(Color.yellow)
                            .frame(width: 25, height: change ? 400 : 25)
                            .animation(.interpolatingSpring(mass: 1, stiffness: 50, damping: 7, initialVelocity: 0), value: change)
                    }
                    VStack {
                        Text("5")
                            .bold()
                        Spacer()
                        Rectangle()
                            .fill(Color.yellow)
                            .frame(width: 25, height: change ? 400 : 25)
                            .animation(.interpolatingSpring(mass: 1, stiffness: 50, damping: 7, initialVelocity: 5), value: change)
                    }
                    VStack {
                        Text("10")
                            .bold()
                        Spacer()
                        Rectangle()
                            .fill(Color.yellow)
                            .frame(width: 25, height: change ? 400 : 25)
                            .animation(.interpolatingSpring(mass: 1, stiffness: 50, damping: 7, initialVelocity: 10), value: change)
                    }
                    VStack {
                        Text("50")
                            .bold()
                        Spacer()
                        Rectangle()
                            .fill(Color.yellow)
                            .frame(width: 25, height: change ? 400 : 25)
                            .animation(.interpolatingSpring(mass: 1, stiffness: 50, damping: 7, initialVelocity: 50), value: change)
                    }
                    VStack {
                        Text("100")
                            .bold()
                        Spacer()
                        Rectangle()
                            .fill(Color.yellow)
                            .frame(width: 25, height: change ? 400 : 25)
                            .animation(.interpolatingSpring(mass: 1, stiffness: 50, damping: 7, initialVelocity: 100), value: change)
                    }
                    
                   
                }
                .font(.system(size: 20))
                .foregroundColor(.white)
            }
            .font(.title)
        }
    }
}

struct InterpolatingInitialVelocity_Previews: PreviewProvider {
    static var previews: some View {
        InterpolatingInitialVelocity()
    }
}
