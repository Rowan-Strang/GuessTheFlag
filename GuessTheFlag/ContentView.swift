//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by MacRow on 06/05/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Button("Button One") {}
                .buttonStyle(.bordered)
            Button("Button Two", role: .destructive) {}
                .buttonStyle(.bordered)
            Button("Button Three") {}
                .buttonStyle(.borderedProminent)
                .tint(.green)
            Button("Button Four", role: .destructive) {}
                .buttonStyle(.borderedProminent)
            
        }
    }
    
    func excuteDelete(){
        print("now deleting")
    }
}

#Preview {
    ContentView()
}
