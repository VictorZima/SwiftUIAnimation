//
//  ScopeWithAnimationOnSingleView.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 28/07/2022.
//

import SwiftUI

struct ScopeWithAnimationOnSingleView: View {
    @State private var flipHorizontally = false
    @State private var flipVertically = false
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("With Animation")
            SubtitleText("On a Single View")
            
            HStack(spacing: 50) {
                Button {
                    withAnimation {
                        self.flipHorizontally.toggle()
                    }
                } label: {
                    Image(systemName: "flip.horizontal.fill")
                        .font(.system(size: 50))
                        .padding()
                }
                
                Button {
                    withAnimation {
                        self.flipVertically.toggle()
                    }
                } label: {
                    Image(systemName: "flip.horizontal.fill")
                        .font(.system(size: 50))
                        .rotationEffect(.degrees(90))
                        .padding()
                }
            }
                Image("day")
                    .resizable()
                    .padding(.horizontal)
                    .scaleEffect(x: flipHorizontally ? -1 : 1, y: flipVertically ? -1 : 1)
        }
        .font(.title)
    }
}

struct ScopeWithAnimationOnSingleView_Previews: PreviewProvider {
    static var previews: some View {
        ScopeWithAnimationOnSingleView()
    }
}
