//
//  TransitionScale.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 08/08/2022.
//

import SwiftUI

struct TransitionScale: View {
    @State private var change = false

    var body: some View {
        ZStack {
            Color(.lightGray)
                .edgesIgnoringSafeArea(.vertical)
            
            VStack(spacing: 20) {
                TitleText("Transitions")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                SubtitleText("Scale")

                Button("Change") {
                    withAnimation(.default) {
                        self.change.toggle()
                    }
                }
                Spacer()
                if change {
                    Image("time")
                        .transition(.scale(scale: 3))

                }
                Spacer()
            }
            .font(.title)
        }
    }
}

struct TransitionScale_Previews: PreviewProvider {
    static var previews: some View {
        TransitionScale()
    }
}
