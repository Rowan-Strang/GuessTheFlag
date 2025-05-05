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
            Color.secondary
                .frame(minWidth: 200, maxWidth: .infinity, maxHeight: 200)
            Text("MyContent")
        }
        .background(.blue)
    }
}

#Preview {
    ContentView()
}
