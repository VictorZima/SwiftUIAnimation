//
//  ContentView.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 11/07/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var change = false
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Color")
            SubtitleText("SubtitleText")
            BannerText("Banner text")
                Text("With Animation")
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(change ? .orange : .blue)
                    .frame(width: 150, height: 100)
                    .padding()
                    .animation(.easeInOut(duration: 5), value: change)
                Text("Without Animation")
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(change ? .orange : .blue)
                    .frame(width: 150, height: 100)
                    .padding()
            Spacer()
            Button {
                change.toggle()
            } label: {
                Text("Change")
            }
            .padding(.bottom)
        }
        .font(.title)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
