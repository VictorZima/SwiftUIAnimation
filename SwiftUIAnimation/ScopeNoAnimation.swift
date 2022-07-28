//
//  ScopeNoAnimation.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 28/07/2022.
//

import SwiftUI

struct ScopeNoAnimation: View {
    @State private var change = false
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Options")
            SubtitleText("Scope - No Animation")
            BannerText("You can also prevent an animation on one of the child views. Use .none parameter in the animation modifier.", backColor: .yellow, textColor: .black)
            
            Button("Change") {
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
                .animation(.none, value: change)
        }
        .font(.title)
        .animation(.easeOut, value: change)
    }
}

struct ScopeNoAnimation_Previews: PreviewProvider {
    static var previews: some View {
        ScopeNoAnimation()
    }
}
