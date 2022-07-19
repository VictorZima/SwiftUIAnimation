//
//  TriggerStepper.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 19/07/2022.
//

import SwiftUI

struct TriggerStepper: View {
    @State private var stepperValue = 1.0
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Triggers")
            SubtitleText("Stepper")
            BannerText("The stepper increments and decrements values which can be applied to a number of modifiers and then animated", backColor: .green)
            
            ZStack {
                ForEach(0...40, id: \.self) { _ in
                    Circle()
                        .foregroundColor(.green).opacity(0.2)
                        .frame(width: .random(in: 10...100))
                        .position(x: .random(in: 1...400), y: .random(in: 1...400))
                        .animation(.default, value: stepperValue)
                }
            }
            
            Stepper("Adjust", value: $stepperValue, in: 1.0...5.0)
                .padding()
        }
        .font(.title)
    }
}

struct TriggerStepper_Previews: PreviewProvider {
    static var previews: some View {
        TriggerStepper()
    }
}
