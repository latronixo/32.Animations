//
//  ContentView.swift
//  32.Animations
//
//  Created by Валентин on 30.05.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        Button("Tap me") {
            //animationAmount += 1
        }
        .onAppear{
        animationAmount = 2
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .overlay(
            Circle()
            .stroke(.blue)
            .scaleEffect(animationAmount)
            .opacity(2 - animationAmount)
            .animation(
                .easeInOut(duration: 1)
                .repeatForever(autoreverses: false),
               value: animationAmount
            )
        )
    }
}

#Preview {
    ContentView()
}
