//
//  AnimateGeometryReader.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 15/07/2022.
//

import SwiftUI

struct AnimateGeometryReader: View {
    @State private var change = false
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Animatable Properties")
            SubtitleText("In Geometry Reader")
            BannerText("You can animate the center point (position) of a view within a GeometryReader's coordinate space.", backColor: .blue, textColor: .white)
            
            GeometryReader { gr in
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.blue)
                    .frame(width: 100, height: 100)
                    .position(self.change ? CGPoint(x: 100, y: 100) : CGPoint(x: 300, y: 300))
                    .animation(.default, value: change)
            }
            
            Button("Change") {
                self.change.toggle()
            }
            .font(.title)
        }
    }
}

struct AnimateGeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        AnimateGeometryReader()
    }
}
