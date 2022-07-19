//
//  TriggerOnAppear.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 19/07/2022.
//

import SwiftUI

struct TriggerOnAppear: View {
    @State private var expand = false
    
    var body: some View {
        ZStack {
            Image(systemName: "sun.max.fill")
                .padding()
                .foregroundColor(.white)
                .background(Circle()
                    .fill(Color.green)
                    .scaleEffect(expand ? 20 : 1)
                    .edgesIgnoringSafeArea(.all)
                )
                .onAppear { self.expand.toggle() }
                .animation(.easeIn, value: expand)
            
            VStack(spacing: 20) {
                TitleText("Trigger")
                SubtitleText("On Appear")
                BannerText("You can have on animation start as soon as a view appears", backColor: .green)
                
                Spacer()
            }
        }
        .font(.title)
    }
}

struct TriggerOnAppear_Previews: PreviewProvider {
    static var previews: some View {
        TriggerOnAppear()
    }
}
