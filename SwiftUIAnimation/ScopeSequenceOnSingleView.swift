//
//  ScopeSequenceOnSingleView.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 25/07/2022.
//

import SwiftUI

struct ScopeSequenceOnSingleView: View {
    @State private var change = false
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Scope")
            SubtitleText("Sequence on Single View")
            BannerText("Earlier, you learned how to use delay to sequence animations. You can also sequence multiple animations on a single view.", backColor: .yellow, textColor: .black)
            
            Button("Start") {
                self.change.toggle()
            }
            Spacer()
            
            Image(systemName: "heart.fill")
                .foregroundColor(.yellow)
                .font(.system(size: 150))
            
                .scaleEffect(change ? 2 : 1)
                .animation(.easeInOut(duration: 1), value: change)
            
                .scaleEffect(change ? 0.75 : 1)
                .animation(.easeIn.delay(1), value: change)
            Spacer()
            
            
        }
        .font(.title)
        
    }
}

struct ScopeSequenceOnSingleView_Previews: PreviewProvider {
    static var previews: some View {
        ScopeSequenceOnSingleView()
    }
}
