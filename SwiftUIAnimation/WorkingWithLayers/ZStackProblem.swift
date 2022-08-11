//
//  ZStackProblem.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 11/08/2022.
//

import SwiftUI

struct ZStackProblem: View {
    @State private var show = false
    
    var body: some View {
        ZStack {
            Color(.lightGray)
                .edgesIgnoringSafeArea(.vertical)
            VStack(spacing: 20) {
                TitleText("Transitions")
                    .foregroundColor(.yellow)
                SubtitleText("ZStackProblem")
                
                Button("Show") {
                    self.show.toggle()
                }
            }
            .blur(radius: show ? 10 : 0)
            
            if show {
                VStack {
                    Image("time")
                    Button("Close") {
                        withAnimation(.easeIn) {
                            self.show = false
                        }
                    }
                    .padding(.top, 30)
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(Color(.orange)))
                .shadow(radius: 20)
                .transition(.slide)
                .animation(.default, value: show)
            }
        }
        .font(.title)
    }
}

struct ZStackProblem_Previews: PreviewProvider {
    static var previews: some View {
        ZStackProblem()
    }
}
