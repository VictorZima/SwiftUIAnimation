//
//  InteractivePopuo.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 01/08/2022.
//

import SwiftUI

struct InteractivePopuo: View {
    @State private var showPopup = false
    @State private var animate = true
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [.blue, .gray]), center: .center, startRadius: 10, endRadius: 400)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {
                TitleText("Interactive Spring")
                    .foregroundColor(.yellow)
                SubtitleText("Comparison")
                Spacer()
                Button("Show Popup") {
                    self.animate.toggle()
                    self.showPopup = true
                }
            }
            .font(.title)
            .blur(radius: showPopup ? 2 : 0)
            .animation(.easeOut, value: animate)
            
            ZStack {
                Color.black
                    .opacity(0.4)
                    .edgesIgnoringSafeArea(.all)
                    .animation(.none, value: showPopup)
                VStack {
                    Circle()
                        .fill(.yellow)
                        .frame(width: 70)
                        .overlay(
                        Image(systemName: "questionmark.circle")
                            .font(.system(size: 50))
                            .foregroundColor(.white)
                        )
                        .offset(y: 40)
                        .zIndex(1)
                    VStack {
                        Color.yellow
                            .frame(height: 40)
                        Spacer()
                        Text("Animate the appearance of this popup")
                        Spacer()
                        Button("Close") {
                            self.showPopup = false
                        }
                        .padding(.vertical, 12)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.yellow)
                    }
                    .background(.white)
                    .cornerRadius(12)
                }
                .frame(height: 300)
                .background(.clear)
                .padding(.horizontal, 12)
                .scaleEffect(x: showPopup ? 1 : 0.8, y: showPopup ? 1 : 1.3)
                .animation(.interactiveSpring(response: 0.3, dampingFraction: 0.3), value: animate)
            }
            .opacity(showPopup ? 1 : 0)
        }
        .accentColor(.yellow)
    }
}

struct InteractivePopuo_Previews: PreviewProvider {
    static var previews: some View {
        InteractivePopuo()
    }
}
