//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by MacRow on 06/05/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            Spacer()
            HStack {
                Spacer()
                Text("Top Left")
                Spacer()
                Text("Top Right")
                Spacer()
            }
            Spacer()
            HStack {
                Spacer()
                Text("Boottom Left")
                Spacer()
                Text("Bottom Right")
                Spacer()
            }
            Spacer()
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
