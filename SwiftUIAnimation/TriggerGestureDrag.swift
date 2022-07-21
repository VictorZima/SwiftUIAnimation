//
//  TriggerGestureDrag.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 21/07/2022.
//

import SwiftUI

struct TriggerGestureDrag: View {
    @GestureState private var menuOffset = CGSize.zero
    @State private var currentMenuY = 0.0
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Triggers")
            SubtitleText("Drag Gesture")
            BannerText("Dragging a view will move it but you can add animate to complete moving a view into its final location smoothly", backColor: .green)
            
            Spacer()
            
            VStack {
                Circle()
                    .fill(Color.green)
                    .frame(width: 100, height: 100)
                    .overlay(
                        Image(systemName: "line.horizontal.3")
                            .foregroundColor(.white)
                    )
                    .offset(x: 0, y: -50)
                HStack {
                    Spacer()
                }
                Spacer()
            }
            .frame(height: 200)
            .background(RoundedRectangle(cornerRadius: 20).fill(Color.green))
            .offset(x: 0, y: currentMenuY + menuOffset.height)
            .gesture(
            DragGesture()
                .updating($menuOffset, body: { ( value, menuOffset, transaction) in
                    menuOffset = value.translation
                })
                .onEnded({ value in
                    if value.translation.height > 100 {
                        self.currentMenuY = 200
                    } else {
                        self.currentMenuY = 0
                    }
                })
            )
            .animation(.default, value: currentMenuY)
        }
        .font(.title)
    }
}

struct TriggerGestureDrag_Previews: PreviewProvider {
    static var previews: some View {
        TriggerGestureDrag()
    }
}
