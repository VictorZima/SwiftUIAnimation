//
//  ValueIntroduction.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 30/07/2022.
//

import SwiftUI

struct ValueIntroduction: View {
    @State private var change = false
    @State private var animateOnChange = false
    
    var body: some View {
        VStack(spacing: 40) {
            TitleText("Value")
            SubtitleText("Introduction")
            
            Button("Change") {
                self.change.toggle()
                
                if self.change {
                    self.animateOnChange.toggle()
                }
            }
            
            Circle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
                .offset(x: change ? 120 : -120)
                .animation(.easeIn(duration: 2), value: animateOnChange)
        }
        .font(.title)
    }
}

struct ValueIntroduction_Previews: PreviewProvider {
    static var previews: some View {
        ValueIntroduction()
    }
}
