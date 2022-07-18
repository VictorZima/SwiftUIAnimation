//
//  TriggerButton.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 18/07/2022.
//

import SwiftUI

struct TriggerButton: View {
    @State private var showButtons = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            VStack(spacing: 20) {
                TitleText("Triggers")
                SubtitleText("Buttons")
                BannerText("You've seen this example a lot now. The tap of a button trigger the start of the animation.", backColor: .green)
                
                Spacer()
            }
            
            Group {
                Button {
                    self.showButtons.toggle()
                } label: {
                    Image(systemName: "bag.badge.plus")
                        .padding(24)
                        .rotationEffect(Angle.degrees(showButtons ? 0 : -90))
                }
                .background(Circle().fill(Color.green).shadow(radius: 8, x: 4, y: 4))
                .offset(x: 0, y: showButtons ? -150 : 0)
                .opacity(showButtons ? 1 : 0)

                Button {
                    self.showButtons.toggle()
                } label: {
                    Image(systemName: "gauge.badge.plus")
                        .padding(24)
                        .rotationEffect(Angle.degrees(showButtons ? 0 : 90))
                }
                .background(Circle().fill(Color.green).shadow(radius: 8, x: 4, y: 4))
                .offset(x: showButtons ? -110 : 0, y: showButtons ? -110 : 0)
                .opacity(showButtons ? 1 : 0)
                
                Button {
                    self.showButtons.toggle()
                } label: {
                    Image(systemName: "calendar.badge.plus")
                        .padding(24)
                        .rotationEffect(Angle.degrees(showButtons ? 0 : 90))
                }
                .background(Circle().fill(Color.green).shadow(radius: 8, x: 4, y: 4))
                .offset(x: showButtons ? -150 : 0, y: 0)
                .opacity(showButtons ? 1 : 0)
                
                Button {
                    self.showButtons.toggle()
                } label: {
                    Image(systemName: "plus")
                        .padding(24)
                        .rotationEffect(Angle.degrees(showButtons ? 45 : 0))
                    
                }
                .background(Circle().fill(Color.green).shadow(radius: 8, x: 4, y: 4))
            }
            .padding(.trailing, 20)
            .accentColor(.white)
            .animation(.default, value: showButtons)
        }
        .font(.title)
    }
}

struct TriggerButton_Previews: PreviewProvider {
    static var previews: some View {
        TriggerButton()
    }
}
