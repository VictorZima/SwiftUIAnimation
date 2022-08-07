//
//  TransitionOpacity.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 08/08/2022.
//

import SwiftUI

struct TransitionOpacity: View {
    @State private var change = false

    var body: some View {
        ZStack {
            Color(.lightGray)
                .edgesIgnoringSafeArea(.vertical)
            
            VStack(spacing: 20) {
                TitleText("Transitions")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                SubtitleText("Opacity")

                Button("Change") {
                    withAnimation(.easeInOut(duration: 1)) {
                        self.change.toggle()
                    }
                }
                Spacer()
                if change {
                    Image("time")
                        .transition(.opacity)
                }
                Spacer()
            }
            .font(.title)
        }
    }
}

struct TransitionOpacity_Previews: PreviewProvider {
    static var previews: some View {
        TransitionOpacity()
    }
}
