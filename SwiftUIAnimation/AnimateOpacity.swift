//
//  AnimateOpacity.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 15/07/2022.
//

import SwiftUI

struct AnimateOpacity: View {
    @State private var show = false
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Animatable Properties")
            SubtitleText("Opacity")
            BannerText("Opacity is the quality of thickness, solidness or opaqueness. The more opacity, the more solid something appears (less transparent).", backColor: .blue, textColor: .white)
            
            Button("Show/Hide") {
                self.show.toggle()
            }
            .font(.title)
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.blue)
                .padding()
                .opacity(show ? 1 : 0)
                .animation(.easeInOut(duration: 3), value: show)
        }
    }
}

struct AnimateOpacity_Previews: PreviewProvider {
    static var previews: some View {
        AnimateOpacity()
    }
}
