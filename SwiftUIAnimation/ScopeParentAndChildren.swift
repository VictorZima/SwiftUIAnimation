//
//  ScopeParentAndChildren.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 25/07/2022.
//

import SwiftUI

struct ScopeParentAndChildren: View {
    @State private var change = false
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Options")
            SubtitleText("Scope - Parent and Children")
            BannerText("The animation modifier can go on a parent view to animate all children within", backColor: .yellow, textColor: .black)
                .layoutPriority(1)
            
            HStack {
                Color.blue
                    .hueRotation(Angle.degrees(change ? 180 : 0))
                Color.green
                    .hueRotation(Angle.degrees(change ? 180 : 0))
                Color.red
                    .hueRotation(Angle.degrees(change ? 180 : 0))
            }
            .animation(.linear, value: change)
            
            Button("Start") {
                self.change.toggle()
            }
        }
    }
}

struct ScopeParentAndChildren_Previews: PreviewProvider {
    static var previews: some View {
        ScopeParentAndChildren()
    }
}
