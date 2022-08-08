//
//  ScopeWithAnimationCustomAnimation.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 28/07/2022.
//

import SwiftUI

struct ScopeWithAnimationCustomAnimation: View {
    @State private var flipHorizontally = false
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("With Animation")
            SubtitleText("Custom Animation")
            BannerText("Using just withAnimation gives you the default animation. You can also customize the curve, duration, etc just like the previous animations you learned about.", backColor: .yellow, textColor: .black)
            
            Button {
                withAnimation(.easeOut(duration: 1)) {
                    self.flipHorizontally.toggle()
                }
            } label: {
                Image(systemName: "flip.horizontal.fill")
                    .font(.system(size: 50))
                    .padding()
            }
            
            Image("day")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .cornerRadius(30)
                .padding()
                .scaleEffect(x: flipHorizontally ? -1 : 1, y: 1)
        }
        .font(.title)
    }
}

struct ScopeWithAnimationCustomAnimation_Previews: PreviewProvider {
    static var previews: some View {
        ScopeWithAnimationCustomAnimation()
    }
}
