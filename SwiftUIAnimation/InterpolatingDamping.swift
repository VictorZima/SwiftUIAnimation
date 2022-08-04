//
//  InterpolatingDamping.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 04/08/2022.
//

import SwiftUI

struct InterpolatingDamping: View {
    @State private var change = false
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [.blue, .gray]), center: .center, startRadius: 10, endRadius: 400)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {
                TitleText("Interpolating Spring")
                    .foregroundColor(.yellow)
                SubtitleText("Stiffness")
                
                Button("Compare Damping") {
                    self.change.toggle()
                }
                HStack(alignment: .bottom, spacing: 40) {
                    VStack {
                        Text("0")
                            .bold()
                        Spacer()
                        Rectangle()
                            .fill(Color.yellow)
                            .frame(width: 35, height: change ? 400 : 25)
                            .animation(.interpolatingSpring(stiffness: 10, damping: 0), value: change)
                    }
                    VStack {
                        Text("0.5")
                            .bold()
                        Spacer()
                        Rectangle()
                            .fill(Color.yellow)
                            .frame(width: 25, height: change ? 400 : 25)
                            .animation(.interpolatingSpring(stiffness: 10, damping: 0.5), value: change)
                    }
                    VStack {
                        Text("1")
                            .bold()
                        Spacer()
                        Rectangle()
                            .fill(Color.yellow)
                            .frame(width: 25, height: change ? 400 : 25)
                            .animation(.interpolatingSpring(stiffness: 10, damping: 1), value: change)
                    }
                    VStack {
                        Text("3")
                            .bold()
                        Spacer()
                        Rectangle()
                            .fill(Color.yellow)
                            .frame(width: 25, height: change ? 400 : 25)
                            .animation(.interpolatingSpring(stiffness: 10, damping: 3), value: change)
                    }
                    VStack {
                        Text("5")
                            .bold()
                        Spacer()
                        Rectangle()
                            .fill(Color.yellow)
                            .frame(width: 25, height: change ? 400 : 25)
                            .animation(.interpolatingSpring(stiffness: 10, damping: 5), value: change)
                    }
                }
                .font(.system(size: 20))
                .foregroundColor(.white)
            }
            .font(.title)
        }
    }
}

struct InterpolatingDamping_Previews: PreviewProvider {
    static var previews: some View {
        InterpolatingDamping()
    }
}
