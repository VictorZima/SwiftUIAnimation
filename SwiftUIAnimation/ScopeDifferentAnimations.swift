//
//  ScopeDifferentAnimations.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 28/07/2022.
//

import SwiftUI

struct ScopeDifferentAnimations: View {
    @State private var change = false
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Options")
            SubtitleText("Scope - Different Animations")
            BannerText("With the animation modifier on the top-most parent, all children views will animate. To override the onimation, just use another animation modifier.", backColor: .yellow, textColor: .black)
            
            Button("change") {
                self.change.toggle()
            }
            
            Text("Uses Parent Animation")
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(change ? .yellow : .red)
                .frame(width: 100, height: 100)
                .offset(x: change ? 140 : -140, y: 0)
            
            Text("Uses Own Animation")
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(change ? .yellow : .orange)
                .frame(width: 100, height: 100)
                .offset(x: change ? 140 : -140, y: 0)
                .animation(.easeIn, value: change)
        }
        .font(.title)
        .animation(.easeOut, value: change)
    }
}

struct ScopeDifferentAnimations_Previews: PreviewProvider {
    static var previews: some View {
        ScopeDifferentAnimations()
    }
}
