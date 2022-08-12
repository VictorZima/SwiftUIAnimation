//
//  AsymmetricIntro.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 12/08/2022.
//

import SwiftUI

struct AsymmetricIntro: View {
    @State private var showHelp = false
    
    var body: some View {
        ZStack {
            Color(.lightGray)
                .edgesIgnoringSafeArea(.vertical)
            
            VStack(spacing: 20) {
                TitleText("Transitions")
                    .foregroundColor(.yellow)
                SubtitleText("Asymmetric Introduction")
                Spacer()
                ZStack(alignment: .topTrailing) {
                    Button {
                        withAnimation(.spring()) {
                            self.showHelp = true
                        }
                    } label: {
                        Image(systemName: "questionmark.circle.fill")
                    }
                    .padding()
                }
                .edgesIgnoringSafeArea(.vertical)
            }
            
            if showHelp {
                VStack(spacing: 20) {
                    Text("Help")
                        .foregroundColor(.white)
                    Image("time")
                    Button {
                        withAnimation(.easeIn) {
                            self.showHelp = false
                        }
                    } label: {
                        Text("Close")
                            .foregroundColor(.white)
                    }
                    .padding(.top, 30)
                    
                }
                .padding(35)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                    .fill(.blue)
                )
                .padding(.top, 100)
                .shadow(radius: 15)
                .transition(.asymmetric(insertion: .slide, removal: .move(edge: .bottom)))
                .zIndex(1)
            }
        }
        .font(.title)
    }
}

struct AsymmetricIntro_Previews: PreviewProvider {
    static var previews: some View {
        AsymmetricIntro()
    }
}


