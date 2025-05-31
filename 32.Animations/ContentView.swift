//
//  ContentView.swift
//  32.Animations
//
//  Created by Валентин on 30.05.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var enabled = false
    var body: some View {
        Button("Tap me") {
            enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .animation(nil, value: enabled)
        .foregroundStyle(.white)
        .clipShape(.rect(cornerRadius: enabled ? 60 : 0))
        .animation(.spring(duration: 1, bounce: 0.6), value: enabled)
        .background(enabled ? .blue : .red)
        
    }
}

#Preview {
    ContentView()
}
