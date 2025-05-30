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
            print("кнопку тапнули")
            animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .scaleEffect(animationAmount)
    }
}

#Preview {
    ContentView()
}
