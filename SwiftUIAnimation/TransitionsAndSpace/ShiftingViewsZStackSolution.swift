//
//  ShiftingViewsZStackSolution.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 11/08/2022.
//

import SwiftUI

struct ShiftingViewsZStackSolution: View {
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
                BannerText("Notice what happens when the view is inserted here.")
            }
            .font(.title)
            
            if change {
                Image("time")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 300)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10)
                        .fill(.white))
                    .shadow(radius: 20)
                    .offset(y: -65)
                    .zIndex(1)
                    .transition(.slide)
                    .animation(.default, value: change)
            }
        }
    }
}

struct ShiftingViewsZStackSolution_Previews: PreviewProvider {
    static var previews: some View {
        ShiftingViewsZStackSolution()
    }
}
