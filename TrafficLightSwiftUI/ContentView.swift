//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Alex Kulish on 15.02.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var currentColor = CurrentColor.noColor
    @State var buttonTitle = "START"
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                CircleColor(color: .red, opacity: currentColor == .red ? 1 : 0.3)
                    .padding(.top, 70)
                CircleColor(color: .yellow, opacity: currentColor == .yellow ? 1 : 0.3)
                CircleColor(color: .green, opacity: currentColor == .green ? 1 : 0.3)
                Spacer()
                ButtonConfig(title: buttonTitle, action: {
                    if buttonTitle == "START" {
                        buttonTitle = "NEXT"
                    }
                    nextColor()
                })
                    .padding(.bottom, 50)
            }
        }
    }
}

extension ContentView {
    
    enum CurrentColor {
        case noColor, red, yellow, green
    }
    
    private func nextColor() {
        switch currentColor {
        case .noColor:
            currentColor = .red
        case .red:
            currentColor = .yellow
        case .yellow:
            currentColor = .green
        case .green:
            currentColor = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
