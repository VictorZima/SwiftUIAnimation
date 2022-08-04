//
//  InterpolatingCompareStiffnessDamping.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 04/08/2022.
//

import SwiftUI

struct InterpolatingCompareStiffnessDamping: View {
    @State private var change = false
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [.blue, .gray]), center: .center, startRadius: 10, endRadius: 400)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 10) {
                TitleText("Interpolating Spring")
                    .foregroundColor(.yellow)
                SubtitleText("Stiffness")
                
                Button("Compare Stiffness And Damping") {
                    self.change.toggle()
                }
                HStack(alignment: .bottom, spacing: 40) {
                    VStack {
                        Text("End State")
                            .bold()
                        Spacer()
                        Rectangle()
                            .fill(Color.yellow)
                            .frame(width: 50, height: 400)
                    }
                    VStack {
                        Text("50, 7")
                            .bold()
                        Spacer()
                        Rectangle()
                            .fill(Color.yellow)
                            .frame(width: 50, height: change ? 400 : 25)
                            .animation(.interpolatingSpring(stiffness: 50, damping: 7), value: change)
                    }
                    VStack {
                        Text("1, 1")
                            .bold()
                        Spacer()
                        Rectangle()
                            .fill(Color.yellow)
                            .frame(width: 50, height: change ? 400 : 25)
                            .animation(.interpolatingSpring(stiffness: 1, damping: 1), value: change)
                    }
                }
                .font(.system(size: 20))
                .foregroundColor(.white)
            }
            .font(.title)
            Rectangle()
                .stroke(.red)
                .frame(width: 400, height: 120)
                .offset(y: -60)
                .padding(.top)
        }
    }
}

struct InterpolatingCompareStiffnessDamping_Previews: PreviewProvider {
    static var previews: some View {
        InterpolatingCompareStiffnessDamping()
    }
}
