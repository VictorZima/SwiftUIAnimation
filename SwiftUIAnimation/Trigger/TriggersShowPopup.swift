//
//  TriggersShowPopup.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 22/07/2022.
//

import SwiftUI

struct TriggersShowPopup: View {
    @State private var showPopup = true
    @GestureState private var popupOffset = CGSize.zero
    
    var body: some View {
        VStack(spacing: 20) {
            ZStack {
                VStack {
                    TitleText("Triggers")
                    SubtitleText("Show Popup")
                    BannerText("The popup will animate when shown and animate will disappears", backColor: .orange)
                    Spacer()
                    
                    Button("Show Popup") {
                        self.showPopup.toggle()
                    }
                }
                .blur(radius: showPopup ? 2 : 0)
                .animation(.easeOut, value: showPopup)
                
                if showPopup {
                    ZStack {
                        Color.black
                            .opacity(0.5)
                            .edgesIgnoringSafeArea(.all)
                        
                        VStack(spacing: 20) {
                            Text("Drag popup off the screen")
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(.yellow)
                            Spacer()
                            Text("You can also tap outside of the popup to close")
                            Spacer()
                            Button("Or Tap This Button to Close") {
                                self.showPopup = false
                            }
                        }
                        .frame(height: 300)
                        .background(.white)
                        .cornerRadius(15)
                        .shadow(radius: 15)
                        .padding(.horizontal, 15)
                        .offset(popupOffset)
                        .gesture(
                            DragGesture(minimumDistance: 100)
                                .updating($popupOffset, body: { (value, popupOffset, transaction) in
                                    popupOffset = value.translation
                                })
                                .onEnded({ value in
                                    self.showPopup = false
                                })
                        )
                    }
                    .animation(.default, value: popupOffset)
                    .onTapGesture(count: 1, perform: {
                        self.showPopup.toggle()
                    })
                }
            }
        }
        .animation(.easeIn, value: showPopup)
    }
}

struct TriggersShowPopup_Previews: PreviewProvider {
    static var previews: some View {
        TriggersShowPopup()
    }
}
