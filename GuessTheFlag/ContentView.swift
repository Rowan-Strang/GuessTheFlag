//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by MacRow on 06/05/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            VStack(spacing: 0){
                Color.red
                Color.blue
            }
            Text("YourContent")
                .foregroundStyle(.secondary)
                .padding(120)
                .background(.ultraThinMaterial)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
