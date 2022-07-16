//
//  AnimateRectangle.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 16/07/2022.
//

import SwiftUI

struct AnimateRectangle: View {
    @State private var change = false
    @State private var angle = 90
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Putting It All Together")
            SubtitleText("End Result")
            BannerText("This is the final animation that you will be building.", backColor: .red, textColor: .white)
            
            Spacer()
            
            ZStack {
                ForEach(0..<4) { i in
                    Rectangle()
                        .foregroundColor(change ? .red : .orange)
                        .frame(width: 100, height: 50)
                        .rotationEffect(Angle.degrees(change ? Double((90 * i)) : Double((0 * i))), anchor: .bottomLeading)
                }
            }
            .animation(.easeInOut(duration: 1), value: change)
            
            Spacer()
            
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
