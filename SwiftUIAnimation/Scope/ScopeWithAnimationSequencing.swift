//
//  ScopeWithAnimationSequencing.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 29/07/2022.
//

import SwiftUI

struct ScopeWithAnimationSequencing: View {
    @State private var show1 = false
    @State private var show2 = false
    @State private var show3 = false
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("With Animation")
            SubtitleText("Sequencing")

            Button("Change") {
                withAnimation(.default) {
                    self.show1.toggle()
                }
                withAnimation(.default.delay(0.4)) {
                    self.show2.toggle()
                }
                withAnimation(.default.delay(0.8)) {
                    self.show3.toggle()
                }
            }
            Spacer()
            
            VStack(spacing: 0) {
                Image(systemName: "1.circle")
                    .opacity(show1 ? 1 : 0)
                Image(systemName: "2.circle")
                    .opacity(show2 ? 1 : 0)
                Image(systemName: "3.circle")
                    .opacity(show3 ? 1 : 0)
            }
            .font(.system(size: 100))
            Spacer()
        }
        .font(.title)
    }
}

struct ScopeWithAnimationSequencing_Previews: PreviewProvider {
    static var previews: some View {
        ScopeWithAnimationSequencing()
    }
}
