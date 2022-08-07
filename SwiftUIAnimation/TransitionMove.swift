//
//  TransitionMove.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 08/08/2022.
//

import SwiftUI

struct TransitionMove: View {
    @State private var change = false

    var body: some View {
        ZStack {
            Color(.lightGray)
                .edgesIgnoringSafeArea(.vertical)
            
            VStack(spacing: 20) {
                TitleText("Transitions")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                SubtitleText("Move")

                Button("Change") {
                    withAnimation {
                        self.change.toggle()
                    }
                }
                Spacer()
                if change {
                    Image("time")
                        .transition(.move(edge: .bottom))
                        .animation(.easeInOut(duration: 1), value: change)
                }
                Spacer()
            }
            .font(.title)
        }
    }
}

struct TransitionMove_Previews: PreviewProvider {
    static var previews: some View {
        TransitionMove()
    }
}
