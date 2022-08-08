//
//  CombiningMoveAndScale.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 08/08/2022.
//

import SwiftUI

struct CombiningMoveAndScale: View {
    @State private var change = false
    
    var body: some View {
        ZStack {
            Color(.lightGray)
                .edgesIgnoringSafeArea(.vertical)
            
            VStack(spacing: 20) {
                TitleText("Transitions")
                    .foregroundColor(.yellow)
                    .fontWeight(.bold)
                SubtitleText("Combining Move And Scale")
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
                            .transition(AnyTransition.move(edge: .leading).combined(with: .scale(scale: 0.1, anchor: .bottomLeading)))
                    }
                    Spacer()
                }
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
            }
            .font(.title)
        }
    }
}

struct CombiningMoveAndScale_Previews: PreviewProvider {
    static var previews: some View {
        CombiningMoveAndScale()
    }
}
