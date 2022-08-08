//
//  TriggerScrollLocation.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 21/07/2022.
//

import SwiftUI

struct TriggerScrollLocation: View {
    var colors: [Color] = [.green, .blue, .red, .purple, .pink, .orange, .yellow]
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Trigger")
            SubtitleText("ScrollView")
            BannerText("Although no animation modifier is used, the ScrollView is changing values (locations of views) that you can use to modify views. Here is a parallax effect as an example:", backColor: .green)
            
            ScrollView {
                ZStack {
                    GeometryReader { gr in
                        Image("night")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .offset(y: -gr.frame(in: .global).origin.y / 2)
                    }
                    
                    VStack(spacing: 40) {
                        RoundedRectangle(cornerRadius: 20).frame(height: 200).opacity(0.7)
                        RoundedRectangle(cornerRadius: 20).frame(height: 200).opacity(0.7)
                        RoundedRectangle(cornerRadius: 20).frame(height: 200).opacity(0.7)
                        RoundedRectangle(cornerRadius: 20).frame(height: 200).opacity(0.7)
                    }
                    .padding(40)
                }.edgesIgnoringSafeArea(.vertical)
            }
        }
        .font(.title)
    }
}

struct TriggerScrollLocation_Previews: PreviewProvider {
    static var previews: some View {
        TriggerScrollLocation()
    }
}
