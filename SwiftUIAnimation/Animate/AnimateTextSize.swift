//
//  AnimateTextSize.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 16/07/2022.
//

import SwiftUI

struct AnimateTextSize: View {
    @State private var change = false
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Animatable Properties")
            SubtitleText("Text Size")
            BannerText("Take a look at what happens when you try to animate the font size of a text view.", backColor: .blue, textColor: .white)
            
            Button("Change") {
                self.change.toggle()
            }
            
            Spacer()
            
            Text("Hello")
                .font(.system(size: change ? 80 : 20))
                .animation(.easeInOut, value: change)
                .border(Color.gray)
            
            Spacer()
        }
        .font(.title)
    }
}

struct AnimateTextSize_Previews: PreviewProvider {
    static var previews: some View {
        AnimateTextSize()
    }
}
