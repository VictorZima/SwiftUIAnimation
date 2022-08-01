//
//  InteractiveComparison.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 01/08/2022.
//

import SwiftUI

struct InteractiveComparison: View {
    @State private var change = false
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [.blue, .gray]), center: .center, startRadius: 10, endRadius: 400)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {
                TitleText("Interactive Spring")
                SubtitleText("Comparison")
                
                Button("Change") {
                    self.change.toggle()
                }
                HStack(alignment: .top, spacing: 50) {
                    VStack {
                        Text("spring")
                        Rectangle()
                            .fill(.yellow)
                            .frame(width: 100, height: change ? 400: 100)
                            .animation(.spring(), value: change)
                    }
                    VStack {
                        Text("interactiveSpring")
                        Rectangle()
                            .fill(.yellow)
                            .frame(width: 100, height: change ? 400: 100)
                            .animation(.interactiveSpring(), value: change)
                    }
                }
                .foregroundColor(.white)
                Spacer()
            }
            .font(.title2)
        }
    }
}

struct InteractiveComparison_Previews: PreviewProvider {
    static var previews: some View {
        InteractiveComparison()
    }
}
