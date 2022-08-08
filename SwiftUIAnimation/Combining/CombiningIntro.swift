//
//  CombiningIntro.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 08/08/2022.
//

import SwiftUI

struct CombiningIntro: View {
    @State private var change = false
    
    var body: some View {
        ZStack {
            Color(.lightGray)
                .edgesIgnoringSafeArea(.vertical)
            
            VStack(spacing: 20) {
                TitleText("Transitions")
                    .foregroundColor(.yellow)
                    .fontWeight(.bold)
                SubtitleText("Combining Introduction")
                
                Button {
                    withAnimation {
                        self.change.toggle()
                    }
                } label: {
                    Text("Change")
                }
                Spacer()
                if change {
                    Image("time")
                        .transition(.slide.combined(with: .opacity))
                }
                Spacer()
            }
            .font(.title)
        }
    }
}

struct CombiningIntro_Previews: PreviewProvider {
    static var previews: some View {
        CombiningIntro()
    }
}
