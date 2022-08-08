//
//  DelaySequenceAnimations.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 23/07/2022.
//

import SwiftUI

struct DelaySequenceAnimations: View {
    @State private var show = false
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Delay")
            SubtitleText("Sequence Animations")
            BannerText("Use the delay to sequence animations.", backColor: .red, textColor: .white)
            Spacer()
            
            VStack(spacing: 10) {
                Group {
                    Image(systemName: "1.circle")
                        .opacity(show ? 1 : 0)
                        .animation(.easeIn.delay(0.5), value: show)
                    Image(systemName: "2.circle")
                        .opacity(show ? 1 : 0)
                        .animation(.easeIn.delay(0.9), value: show)
                    Image(systemName: "3.circle")
                        .opacity(show ? 1 : 0)
                        .animation(.easeIn.delay(1.3), value: show)
                }
                .font(.system(size: 80))
                
                Button("Go!") {
                    
                }
                .font(.system(size: 70))
                .foregroundColor(.white)
                .padding(25)
                .background(Circle().fill(Color.green))
                .opacity(show ? 1 : 0)
                .animation(.easeIn.delay(1.7), value: show)
                
            }
            .onAppear {
                self.show = true
            }
            Spacer()
        }
        .font(.title)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct DelaySequenceAnimations_Previews: PreviewProvider {
    static var previews: some View {
        DelaySequenceAnimations()
    }
}
