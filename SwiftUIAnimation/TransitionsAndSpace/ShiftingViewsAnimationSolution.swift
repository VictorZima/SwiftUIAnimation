//
//  ShiftingViewsAnimationSolution.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 11/08/2022.
//

import SwiftUI

struct ShiftingViewsAnimationSolution: View {
    @State private var change = false
    
    var body: some View {
        ZStack {
            Color(.lightGray)
                .edgesIgnoringSafeArea(.vertical)
            VStack(spacing: 20) {
                TitleText("Transitions")
                    .foregroundColor(.yellow)
                SubtitleText("Shifting Views Problem")
                BannerText("Transition work with views that are inserted and removed from the screen (view hierarchy")
                
                Button("Change") {
                    withAnimation {
                        self.change.toggle()
                    }
                }

                if change {
                    Image("time")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: 300)
                        .transition(.slide.combined(with: .opacity))
                }
                
                BannerText("Notice what happens when the view is inserted here.")
            }
            .font(.title)
            .animation(.default, value: change)
        }
    }
}

struct ShiftingViewsAnimationSolution_Previews: PreviewProvider {
    static var previews: some View {
        ShiftingViewsAnimationSolution()
    }
}
