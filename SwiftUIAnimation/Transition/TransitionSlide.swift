//
//  TransitionSlide.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 08/08/2022.
//

import SwiftUI

struct TransitionSlide: View {
    @State private var showLogin = false
    @State private var userName = ""
    @State private var password = ""

    let xOffset: CGFloat = -200
    let showLoginDuration = 0.7
    let delay = 0.5
    
    var body: some View {
        ZStack {
            Color(.lightGray)
                .edgesIgnoringSafeArea(.vertical)
            
            VStack(spacing: 20) {
                TitleText("Transitions")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                SubtitleText("Slide")
                Spacer()
                if showLogin {
                    VStack(spacing: 30) {
                        Image(systemName: "lock.shield")
                            .font(.system(size: 70))
                            .padding()
                            .foregroundColor(.yellow)
                            .animation(.easeOut(duration: showLoginDuration).delay(delay), value: showLogin)
                        TextField("UserName", text: self.$userName)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .animation(.easeOut(duration: showLoginDuration).delay(delay + 0.3), value: showLogin)
                        SecureField("Password", text: self.$password)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .animation(.easeOut(duration: showLoginDuration).delay(delay + 0.5), value: showLogin)
                        Button {
                            
                        } label: {
                            Text("Login")
                        }
                        .animation(.easeOut(duration: showLoginDuration).delay(delay + 0.7), value: showLogin)
                        .foregroundColor(.yellow)
                        
                    }
                    .padding(.horizontal)
                    .transition(.slide)
                }
                Spacer()
            }
            .font(.title)
            .onAppear {
                withAnimation {
                    self.showLogin = true
                }
                
            }
        }
    }
}

struct TransitionSlide_Previews: PreviewProvider {
    static var previews: some View {
        TransitionSlide()
    }
}
