//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by MacRow on 06/05/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    
    var body: some View {
        Button("Show Alert"){
            showingAlert = true
        }
        .alert("Rowanies Button", isPresented: $showingAlert) {
            Button("Please God No", role: .cancel) {}
            Button("Please God No", role: .destructive) {}
        } message: {
            Text("Please Read this")
        }
    }
}

#Preview {
    ContentView()
}
