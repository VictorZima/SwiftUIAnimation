//
//  IfElseSolutionRefactor.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 11/08/2022.
//

import SwiftUI

struct IfElseSolutionRefactor: View {
    @State private var change = false
    
    var body: some View {
        ZStack {
            Color(.lightGray)
                .edgesIgnoringSafeArea(.vertical)
            VStack(spacing: 30) {
                TitleText("Transitions")
                    .foregroundColor(.yellow)
                SubtitleText("If Else Solution Refactor")
                
                Button("Change") {
                    withAnimation {
                        self.change.toggle()
                    }
                }
                .padding(.bottom)
                
                Group {
                    if change {
                        Image("reading.book.female")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .transition(.move(edge: .leading))
                            .padding()
                    }
                    if change == false {
                        Image("reading.book.male")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .transition(.move(edge: .trailing))
                            .padding()
                    }
                }
                Spacer()
            }
        }
        .font(.title)
        .animation(.default, value: change)
    }
}

struct IfElseSolutionRefactor_Previews: PreviewProvider {
    static var previews: some View {
        IfElseSolutionRefactor()
    }
}
