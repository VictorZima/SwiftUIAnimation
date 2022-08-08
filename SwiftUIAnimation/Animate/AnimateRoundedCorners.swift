//
//  AnimateRoundedCorners.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 16/07/2022.
//

import SwiftUI

struct AnimateRoundedCorners: View {
    @State private var change = false
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Animatable Properties")
            SubtitleText("Corner Radius")
            BannerText("You provide a value to set the corner radius of a view. The change of this property can be animated.", backColor: .blue, textColor: .white)
            
            Button("Change") {
                self.change.toggle()
            }
            
            RoundedRectangle(cornerRadius: change ? 0 : 70)
                .foregroundColor(.blue)
                .padding()
                .animation(.easeInOut, value: change)
            
            Text("You can NOT animate the cornerRadius modifier.")
                .padding(25)
                .background(Color.blue)
                .cornerRadius(change ? 0 : .infinity) // Cannot animate this
                .animation(.easeInOut, value: change) // This will not work
        }
        .font(.title)
    }
}

struct AnimateRoundedCorners_Previews: PreviewProvider {
    static var previews: some View {
        AnimateRoundedCorners()
    }
}
