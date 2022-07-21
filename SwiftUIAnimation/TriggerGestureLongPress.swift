//
//  TriggerGestureLongPress.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 21/07/2022.
//

import SwiftUI

struct TriggerGestureLongPress: View {
    @State private var isLongPressed = false
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Trigger")
            SubtitleText("Long Press Gesture")
            BannerText("You can start an animation with a long press gesture", backColor: .green)
            
            Spacer()
            
            Circle()
                .fill(isLongPressed ? Color.blue : Color.green)
                .frame(width: 200, height: 200)
                .overlay(
                    Circle()
                        .stroke(Color.black, lineWidth: 5)
                        .scaleEffect(isLongPressed ? 2 : 1)
                        .opacity(isLongPressed ? 0 : 1)
                )
                .onLongPressGesture {
                    self.isLongPressed.toggle()
                }
                .animation(.default, value: isLongPressed)
            
            Spacer()
        }
        .font(.title)
    }
}

struct TriggerGestureLongPress_Previews: PreviewProvider {
    static var previews: some View {
        TriggerGestureLongPress()
    }
}
