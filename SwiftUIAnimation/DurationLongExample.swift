//
//  DurationLongExample.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 23/07/2022.
//

import SwiftUI

struct DurationLongExample: View {
    @State private var change = false
    
    var body: some View {
        
        ZStack {
            Image(systemName: "cloud.sun.fill")
                .font(.system(size: 200))
                .foregroundColor(.purple)
                .opacity(0.3)
                .offset(x: change ? 240 : -240, y: 20)
                .animation(.linear(duration: 15), value: change)
            
            Image(systemName: "cloud.fill")
                .font(.system(size: 200))
                .foregroundColor(.purple)
                .opacity(0.3)
                .offset(x: change ? -240 : 240, y: 200)
                .animation(.linear(duration: 10), value: change)
    
            VStack(spacing: 10) {
                TitleText("Animation Option")
                SubtitleText("Long Duration Example")
                BannerText("Sometimes you want a very long duration to create subtle effects on your UI", backColor: .purple, textColor: .white)
                Spacer()
                
                
                Button("Change") {
                    self.change.toggle()
                }
            }
            .font(.title)
        }
    }
}

struct DurationLongExample_Previews: PreviewProvider {
    static var previews: some View {
        DurationLongExample()
    }
}
