//
//  ValueShowHideExample.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 30/07/2022.
//

import SwiftUI

struct ValueShowHideExample: View {
    @State private var showCard = false
    @State private var animateOnChange = false
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Value")
            SubtitleText("Show and Hide Example")
            
            Button {
                self.showCard.toggle()
                self.animateOnChange.toggle()
            } label: {
                Image(systemName: "creditcard")
                    .font(.largeTitle)
            }
            
            VStack {
                HStack {
                    Spacer()
                    Text("Get the Card")
                    Spacer()
                    
                    Button {
                        self.showCard.toggle()
                    } label: {
                        Text("X")
                            .font(.body)
                            .padding(8)
                    }
                    .background(Circle().stroke(Color.white))
                }
                .foregroundColor(.white)
                Image("Card")
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 20).fill(Color.blue))
            .padding(.horizontal)
            .offset(x: showCard ? 0 : -400)
            .animation(.default, value: animateOnChange)
        }
        .font(.title)
    }
}

struct ValueShowHideExample_Previews: PreviewProvider {
    static var previews: some View {
        ValueShowHideExample()
    }
}
