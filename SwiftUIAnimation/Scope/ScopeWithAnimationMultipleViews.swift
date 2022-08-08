//
//  ScopeWithAnimationMultipleViews.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 28/07/2022.
//

import SwiftUI

struct ScopeWithAnimationMultipleViews: View {
    @State private var unlock = false
    @State private var open = false
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("With Animation")
            SubtitleText("Multiple")
            
            Button {
                withAnimation {
                    self.unlock.toggle()
                }
            } label: {
                Image(systemName: self.unlock ? "lock.open" : "lock")
                    .offset(x: self.unlock ? 4.5 : 0)
            }
            
            GeometryReader { geometry in
                ZStack {
                    VStack {
                        Text("Hello")
                        Image(systemName: "heart.fill")
                            .foregroundColor(.pink)
                    }
                    .font(.system(size: 50))
                    
                    HStack(spacing: 0) {
                        Rectangle()
                            .fill(self.unlock ? Color.green : Color.red)
                            .offset(x: self.open ? -geometry.size.width / 2 : 0)
                        Rectangle()
                            .fill(self.unlock ? Color.green : Color.red)
                            .offset(x: self.open ? geometry.size.width / 2 : 0)
                    }
                    
                    if self.unlock && self.open == false {
                        Button("Open") {
                            withAnimation(.easeOut(duration: 0.7)) {
                                self.open = true
                            }
                        }
                    }
                }
            }
        }
        .font(.title)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ScopeWithAnimationMultipleViews_Previews: PreviewProvider {
    static var previews: some View {
        ScopeWithAnimationMultipleViews()
    }
}
