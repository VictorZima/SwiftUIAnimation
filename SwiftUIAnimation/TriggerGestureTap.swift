//
//  TriggerGestureTap.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 21/07/2022.
//

import SwiftUI

struct TriggerGestureTap: View {
    @State private var isOn = false
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Trigger")
            SubtitleText("Tap Gesture")
            BannerText("Like a button, you can respond to tap gestures and animate changes on the UI.", backColor: .green)
            
            Text("Double-Tap Circle")
            
            Spacer()
            
            Circle()
                .fill(isOn ? Color.green : Color.red)
                .frame(width: 200, height: 200)
                .overlay(Text("ON").opacity(isOn ? 1 : 0))
                .overlay(Text("OFF").foregroundColor(.white).opacity(isOn ? 0 : 1))
                .onTapGesture(count: 2, perform: {
                    self.isOn.toggle()
                })
                .shadow(color: isOn ? .green : .red, radius: 50)
                .animation(.default, value: isOn)
            
            Spacer()
        }
        .font(.title)
    }
}

struct TriggerGestureTap_Previews: PreviewProvider {
    static var previews: some View {
        TriggerGestureTap()
    }
}
