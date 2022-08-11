//
//  IfElseProblem.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 11/08/2022.
//

import SwiftUI

struct IfElseProblem: View {
    @State private var change = false
    
    var body: some View {
        ZStack {
            Color(.lightGray)
                .edgesIgnoringSafeArea(.vertical)
            VStack(spacing: 30) {
                TitleText("Transitions")
                    .foregroundColor(.yellow)
                SubtitleText("If Else Problem")
                
                Button("Show") {
                    withAnimation {
                        self.change.toggle()
                    }
                }
                .padding(.bottom)
                
                if change {
                    Image("reading.book.female")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .transition(.move(edge: .leading))
                        .animation(.default, value: change)
                        .padding()
                } else {
                    Image("reading.book.male")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .transition(.move(edge: .trailing))
                        .animation(.default, value: change)
                        .padding()
                }
                Spacer()
            }
        }
        .font(.title)
    }
}

struct IfElseProblem_Previews: PreviewProvider {
    static var previews: some View {
        IfElseProblem()
    }
}
