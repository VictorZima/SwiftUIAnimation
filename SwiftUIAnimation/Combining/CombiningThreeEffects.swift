//
//  CombiningThreeEffects.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 08/08/2022.
//

import SwiftUI

struct CombiningThreeEffects: View {
    @State private var change = false
    
    var body: some View {
        ZStack {
            Color(.lightGray)
                .edgesIgnoringSafeArea(.vertical)
            
            VStack(spacing: 20) {
                TitleText("Transitions")
                    .foregroundColor(.yellow)
                    .fontWeight(.bold)
                SubtitleText("Combining Three Effects")
                Spacer()
                HStack(alignment: .bottom) {
                    Button {
                        withAnimation {
                            self.change.toggle()
                        }
                    } label: {
                        Image(systemName: "macwindow")
                    }
                    if change {
                        Image("time")
                            .resizable()
                            .scaleEffect(0.8)
                            .aspectRatio(contentMode: .fit)
                            .transition(
                                AnyTransition.scale(scale: 0.1, anchor: .bottomLeading)
                                    .combined(with: .move(edge: .leading))
                                    .combined(with: .opacity)
                            )
                    }
                    Spacer()
                }
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
            }
            .font(.title)
        }
    }
}

struct CombiningThreeEffects_Previews: PreviewProvider {
    static var previews: some View {
        CombiningThreeEffects()
    }
}
