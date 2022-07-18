//
//  AnimateRectangle.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 16/07/2022.
//

import SwiftUI

struct AnimateRectangle: View {
    @State private var change = false
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Putting It All Together")
            SubtitleText("End Result")
            BannerText("This is the final animation that you will be building.", backColor: .red, textColor: .white)
            
            GeometryReader { gr in
                ForEach(0..<4) { i in
                        Rectangle()
                            .foregroundColor(change ? .red : .orange)
                            .padding(3)
                            .opacity(change ? 1 : 0)
                            .frame(width: 100, height: 50)
                            .rotationEffect(Angle.degrees(Double(90 * i)), anchor: .bottomLeading)
                            .position(x: gr.size.width / 2 + 50, y: gr.size.height / 2 - 50)
                            .animation(.easeInOut, value: change)
                }
            }
            .border(Color.gray)
            .rotationEffect(Angle.degrees(change ? -180 : 0), anchor: .center)
            .animation(.easeInOut, value: change)

            Button("Change") {
                self.change.toggle()
            }
        }
        .font(.title)
    }
}

struct AnimateRectangle_Previews: PreviewProvider {
    static var previews: some View {
        AnimateRectangle()
    }
}
