//
//  CircleColor.swift
//  TrafficLightSwiftUI
//
//  Created by Alex Kulish on 15.02.2022.
//

import SwiftUI

struct CircleColor: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 120, height: 120)
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .shadow(radius: 10)
            .opacity(opacity)
    }
}

struct CircleColor_Previews: PreviewProvider {
    static var previews: some View {
        CircleColor(color: .black, opacity: 0.3)
    }
}
