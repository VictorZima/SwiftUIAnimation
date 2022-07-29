//
//  TernaryCondition.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 30/07/2022.
//

import SwiftUI

struct TernaryCondition: View {
    @State private var showCard = false
    @State private var useAnimation = false
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Value")
            SubtitleText("Ternary Operator in Animation")
            
            Button {
                self.showCard.toggle()
                self.useAnimation = true
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
                        self.useAnimation = false
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
            .animation(useAnimation ? .default : .none, value: showCard)
        }
        .font(.title)
    }
}

struct TernaryCondition_Previews: PreviewProvider {
    static var previews: some View {
        TernaryCondition()
    }
}
