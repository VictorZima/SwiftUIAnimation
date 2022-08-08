//
//  TriggerSegmentedControl.swift
//  SwiftUIAnimation
//
//  Created by VictorZima on 18/07/2022.
//

import SwiftUI

struct TriggerSegmentedControl: View {
    @State private var segment = 0
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Triggers")
            SubtitleText("Segmented Control")
            BannerText("A segmented control (picker) can also trigger animation, such as sliding views into and out of place", backColor: .green)
            
            Picker("Day & Night", selection: $segment) {
                Text("Day").tag(0)
                Text("Night").tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal)
            
            GeometryReader { gr in
                ZStack {
                    VStack(spacing: 20) {
                        HStack {
                            Spacer()
                            Image(systemName: "sun.max.fill")
                                .font(.system(size: 50))
                            Spacer()
                        }
                        .padding(.top, 24)
                        Text("The Day Report")
                        Spacer()
                    }
                    .background(Image("day").resizable())
                    .cornerRadius(20)
                    .foregroundColor(.white)
                    .offset(x: self.segment == 0 ? 0 : -gr.size.width, y: 0)
                    .animation(.default, value: segment)
                    
                    VStack(spacing: 20) {
                        Spacer()
                        HStack {
                            Spacer()
                            Image(systemName: "moon.fill")
                                .font(.system(size: 50))
                            Spacer()
                        }
                        
                        Text("The Night Report")
                            .padding(.bottom, 24)
                    }
                    .background(Image("night").resizable())
                    .cornerRadius(20)
                    .foregroundColor(.orange)
                    .offset(x: self.segment == 1 ? 0: gr.size.width, y: 0)
                    .animation(.default, value: segment)
                }
                .shadow(radius: 15)
                .padding(.horizontal)
            }
        }
        .font(.title)
    }
}

struct TriggerSegmentedControl_Previews: PreviewProvider {
    static var previews: some View {
        TriggerSegmentedControl()
    }
}
