//
//  ScopeWithAnimation.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 28/07/2022.
//

import SwiftUI

struct ScopeWithAnimation: View {
    @State private var flipHorizontally = false
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("With Animation")
            SubtitleText("Introduction")
            BannerText("The withAnimation closuer says, 'Anything that changes as a result of any values changing inside this closure will use this animation", backColor: .yellow, textColor: .black)
            
            Button {
                withAnimation {
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

struct ScopeWithAnimation_Previews: PreviewProvider {
    static var previews: some View {
        ScopeWithAnimation()
    }
}
