//
//  TransitionIntro.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 07/08/2022.
//

import SwiftUI

struct TransitionIntro: View {
    @State private var change = false

    var body: some View {
        ZStack {
            Color(.lightGray)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                TitleText("Transitions")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                SubtitleText("Introduction")

                Button("Change") {
                    withAnimation {
                        self.change.toggle()
                    }
                }
                Spacer()
                if change {
                    Image("time")
                        .transition(.opacity)
                        //.animation(.default, value: change)
                }
                Spacer()
            }
            .font(.title)
        }
    }
}

struct TransitionIntro_Previews: PreviewProvider {
    static var previews: some View {
        TransitionIntro()
    }
}
