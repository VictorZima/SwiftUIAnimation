//
//  ScopeNoWithAnimation.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 29/07/2022.
//

import SwiftUI

struct ScopeNoWithAnimation: View {
    @State private var expandMoreInfo = true
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("With Animation")
            SubtitleText("Sequencing with Parent/Child")
            
            GeometryReader { gr in
                VStack(spacing: 15) {
                    HStack {
                        Image(systemName: "info.circle")
                            .padding(.horizontal)
                        Text("Login Help")
                        Spacer()
                    }
                    .padding(.top)
                    
                    VStack(spacing: 10) {
                        Image(systemName: "slider.horizontal.3")
                            .font(.largeTitle)
                        Text("Appear after parent is done animating out.")
                        Spacer()
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 15).opacity(0.1))
                    .padding(.horizontal)
                    .opacity(self.expandMoreInfo ? 1 : 0)
                    .animation(.default.delay(0.5), value: expandMoreInfo)
                }
                .padding(.trailing, 12)
                .background(RoundedRectangle(cornerRadius: 20).fill(Color.yellow).shadow(radius: 8))
                .offset(x: self.expandMoreInfo ? 15 : (gr.frame(in: .global).width - 65),
                        y: self.expandMoreInfo ? 15 : (gr.frame(in: .global).height - 65))
                .animation(.easeInOut, value: expandMoreInfo)
                .onTapGesture {
                    self.expandMoreInfo.toggle()
                }
            }
        }
        .edgesIgnoringSafeArea(.bottom)
        .font(.title)
    }
}

struct ScopeNoWithAnimation_Previews: PreviewProvider {
    static var previews: some View {
        ScopeNoWithAnimation()
    }
}
