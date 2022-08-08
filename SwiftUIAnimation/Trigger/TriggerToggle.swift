//
//  TriggerToggle.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 19/07/2022.
//

import SwiftUI

struct TriggerToggle: View {
    @State private var isOn = false
    @State private var extraInfo = ""
    @State private var extraAmount = 0.65
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Triggers")
            SubtitleText("Toggle")
            BannerText("The toggle can also be used to trigger animations. Maybe you want to enable or show options.", backColor: .green)
            
            Toggle("Extra Options", isOn: $isOn)
                .padding(.horizontal)
            
            Group {
                VStack(spacing: 20) {
                    Image(systemName: "hammer.fill")
                    Text("Yuor extra options!")
                    TextField("Extra Info", text: $extraInfo)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .disabled(!isOn)
                    Slider(value: $extraAmount)
                        .disabled(!isOn)
                        
                }
                .padding(28)
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.green))
            }
            .padding(.horizontal)
            .saturation(isOn ? 1 : 0)
            .opacity(isOn ? 1 : 0.25)
            .animation(.default, value: isOn)
        }
        .font(.title)
    }
}

struct TriggerToggle_Previews: PreviewProvider {
    static var previews: some View {
        TriggerToggle()
    }
}
