//
//  TriggerOnDisappear.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 20/07/2022.
//

import SwiftUI

struct TriggerOnDisappear: View {
    @State private var showTip = true
    @State private var showTipButton = false
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Triggers")
            SubtitleText("on Disappear")
            BannerText("When you make a view go away, you can trigger an animation on how it disappears.", backColor: .green)
            
            Spacer()
            
            if showTip {
                VStack(spacing: 20) {
                    HStack {
                        Image(systemName: "info.circle.fill")
                        Spacer()
                        Text("Tip of the Day")
                        Spacer()
                    }
                    .foregroundColor(.white)
                    Spacer()
                    Button("Go It") {
                        self.showTip.toggle()
                    }
                }
                .padding()
                .background(Rectangle().fill(Color.green).shadow(radius: 3))
                .padding(.horizontal)
                .frame(height: 200)
                .onDisappear {
                    self.showTipButton = true
                }
            }
            
            if showTipButton {
                HStack {
                    Button {
                        self.showTipButton = false
                        self.showTip = true
                    } label: {
                        Image(systemName: "info.circle")
                    }
                    .padding(.leading, 24)
                    Spacer()
                }
            }
        }
        .animation(.default, value: showTip)
        .font(.title)
    }
}

struct TriggerOnDisappear_Previews: PreviewProvider {
    static var previews: some View {
        TriggerOnDisappear()
    }
}
