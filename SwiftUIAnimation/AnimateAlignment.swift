//
//  AnimateAlignment.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 14/07/2022.
//

import SwiftUI

struct AnimateAlignment: View {
    @State private var change = false
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Animatable Properties")
            SubtitleText("Alignment Change")
            BannerText("You can animate the alignment change inside a container view.", backColor: .blue, textColor: .white)
            
            VStack(alignment: change ? .trailing : .leading) {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.blue)
                    .frame(width: 100, height: 100)
                    .animation(.default, value: change)
                HStack {
                    Spacer()
                }
            }
            
            BannerText("Inside an HStack:", backColor: .blue, textColor: .white)
            
            HStack(alignment: change ? .bottom : .top) {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.blue)
                    .frame(width: 100, height: 100)
                    .animation(.default, value: change)
                VStack {
                    Spacer()
                }
            }
            .frame(maxHeight: .infinity)
            
            Button("Change") {
                self.change.toggle()
            }
        }.font(.title)
    }
}

struct AnimateAlignment_Previews: PreviewProvider {
    static var previews: some View {
        AnimateAlignment()
    }
}
