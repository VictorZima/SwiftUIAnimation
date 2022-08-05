//
//  InterpolatingMass.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 05/08/2022.
//

import SwiftUI

struct InterpolatingMass: View {
    @State private var change = false
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [.blue, .gray]), center: .center, startRadius: 10, endRadius: 400)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 10) {
                TitleText("Interpolating Spring")
                    .foregroundColor(.yellow)
                SubtitleText("Mass")
                
                Button("Compare Mass") {
                    self.change.toggle()
                }
                HStack(alignment: .bottom, spacing: 40) {
                    VStack {
                        Text("0.1")
                            .bold()
                        Spacer()
                        Rectangle()
                            .fill(Color.yellow)
                            .frame(width: 25, height: change ? 400 : 25)
                            .animation(.interpolatingSpring(mass: 0.01, stiffness: 50, damping: 7), value: change)
                    }
                    VStack {
                        Text("0.5")
                            .bold()
                        Spacer()
                        Rectangle()
                            .fill(Color.yellow)
                            .frame(width: 25, height: change ? 400 : 25)
                            .animation(.interpolatingSpring(mass: 0.5, stiffness: 50, damping: 7), value: change)
                    }
                    VStack {
                        Text("1")
                            .bold()
                        Spacer()
                        Rectangle()
                            .fill(Color.yellow)
                            .frame(width: 25, height: change ? 400 : 25)
                            .animation(.interpolatingSpring(mass: 1, stiffness: 50, damping: 7), value: change)
                    }
                    VStack {
                        Text("10")
                            .bold()
                        Spacer()
                        Rectangle()
                            .fill(Color.yellow)
                            .frame(width: 25, height: change ? 400 : 25)
                            .animation(.interpolatingSpring(mass: 10, stiffness: 50, damping: 7), value: change)
                    }
                    VStack {
                        Text("100")
                            .bold()
                        Spacer()
                        Rectangle()
                            .fill(Color.yellow)
                            .frame(width: 25, height: change ? 400 : 25)
                            .animation(.interpolatingSpring(mass: 100, stiffness: 50, damping: 7), value: change)
                    }
                   
                }
                .font(.system(size: 20))
                .foregroundColor(.white)
            }
            .font(.title)
        }
    }
}

struct InterpolatingMass_Previews: PreviewProvider {
    static var previews: some View {
        InterpolatingMass()
    }
}
