//
//  InterpolartingStiffness.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 04/08/2022.
//

import SwiftUI

struct InterpolartingStiffness: View {
    @State private var change = false
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [.blue, .gray]), center: .center, startRadius: 10, endRadius: 400)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {
                TitleText("Interpolating Spring")
                    .foregroundColor(.yellow)
                SubtitleText("Stiffness")
                
                Button("Compare Stiffness") {
                    self.change.toggle()
                }
                HStack(alignment: .bottom, spacing: 30) {
                    VStack {
                        Text("0.7")
                            .bold()
                        Spacer()
                        Rectangle()
                            .fill(Color.yellow)
                            .frame(width: 25, height: change ? 400 : 25)
                            .animation(.interpolatingSpring(stiffness: 0.7, damping: 1), value: change)
                    }
                    VStack {
                        Text("1")
                            .bold()
                        Spacer()
                        Rectangle()
                            .fill(Color.yellow)
                            .frame(width: 25, height: change ? 400 : 25)
                            .animation(.interpolatingSpring(stiffness: 1, damping: 1), value: change)
                    }
                    VStack {
                        Text("10")
                            .bold()
                        Spacer()
                        Rectangle()
                            .fill(Color.yellow)
                            .frame(width: 25, height: change ? 400 : 25)
                            .animation(.interpolatingSpring(stiffness: 10, damping: 1), value: change)
                    }
                    VStack {
                        Text("50")
                            .bold()
                        Spacer()
                        Rectangle()
                            .fill(Color.yellow)
                            .frame(width: 25, height: change ? 400 : 25)
                            .animation(.interpolatingSpring(stiffness: 50, damping: 1), value: change)
                    }
                    VStack {
                        Text("100")
                            .bold()
                        Spacer()
                        Rectangle()
                            .fill(Color.yellow)
                            .frame(width: 25, height: change ? 400 : 25)
                            .animation(.interpolatingSpring(stiffness: 100, damping: 1), value: change)
                    }
                    VStack {
                        Text("200")
                            .bold()
                        Spacer()
                        Rectangle()
                            .fill(Color.yellow)
                            .frame(width: 25, height: change ? 400 : 25)
                            .animation(.interpolatingSpring(stiffness: 200, damping: 1), value: change)
                    }
                }
            }
        }
    }
}

struct InterpolartingStiffness_Previews: PreviewProvider {
    static var previews: some View {
        InterpolartingStiffness()
    }
}
