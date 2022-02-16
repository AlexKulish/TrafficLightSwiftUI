//
//  ButtonConfig.swift
//  TrafficLightSwiftUI
//
//  Created by Alex Kulish on 15.02.2022.
//

import SwiftUI

struct ButtonConfig: View {
    
    @State var buttontext = "START"
    let action: () -> Void
    
    var body: some View {
        Button {
            buttontext = "NEXT"
            action()
            
        } label: {
            Text(buttontext)
                .fontWeight(.bold)
                .frame(width: 150, height: 50)
                .font(.title)
                .background(Color.blue)
                .cornerRadius(20)
                .foregroundColor(.white)
                .overlay(RoundedRectangle(
                    cornerRadius: 20)
                            .stroke(
                                Color.white,
                                lineWidth: 5
                            )
                )
                .shadow(radius: 10)
        }
    }
    
}

struct ButtonConfig_Previews: PreviewProvider {
    static var previews: some View {
        ButtonConfig(action: {} )
    }
}

