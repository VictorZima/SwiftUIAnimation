//
//  ShiftingViewsProblem.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 11/08/2022.
//

import SwiftUI

struct ShiftingViewsProblem: View {
    @State private var change = false
    
    var body: some View {
        ZStack {
            Color(.lightGray)
                .edgesIgnoringSafeArea(.vertical)
            VStack(spacing: 30) {
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
                        .transition(.slide)
                        .animation(.default, value: change)
                }
                
                BannerText("Notice what happens when the view is inserted here.")
            }
            .font(.title)
        }
    }
}

struct ShiftingViewsProblem_Previews: PreviewProvider {
    static var previews: some View {
        ShiftingViewsProblem()
    }
}
