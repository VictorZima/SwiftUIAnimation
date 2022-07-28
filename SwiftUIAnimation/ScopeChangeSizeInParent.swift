//
//  ScopeChangeSizeInParent.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 28/07/2022.
//

import SwiftUI

struct ScopeChangeSizeInParent: View {
    @State private var change = false
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Options")
            SubtitleText("Chaange size in parent")
            BannerText("Put the animation modifier on the parent so all views animate when one changes.", backColor: .yellow, textColor: .black)
                .layoutPriority(1)
            HStack {
                Color.yellow
                VStack {
                    Color.yellow
                        .frame(minHeight: 20)
                    Color.green
                        .frame(width: change ? 200 : 100, height: change ? 250 : 100)
                    Color.yellow
                        .frame(minHeight: 20)
                }
                Color.yellow
            }
            Color.yellow
            
            Button("Change") {
                self.change.toggle()
            }
        }
        .font(.title)
        .animation(.default, value: change)
    }
}

struct ScopeChangeSizeInParent_Previews: PreviewProvider {
    static var previews: some View {
        ScopeChangeSizeInParent()
    }
}
