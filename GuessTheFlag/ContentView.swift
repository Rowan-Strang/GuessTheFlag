//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by MacRow on 06/05/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button {
            print("Button was pressed")
        } label: {
            Label("Edit", systemImage: "pencil")
                .padding()
                .frame(width: 100, height: 400)
                .background(
                    Circle()
                        .fill(Color.green)
                )
                .foregroundStyle(.white)
        }
    }
    
    func excuteDelete(){
        print("now deleting")
    }
}

#Preview {
    ContentView()
}
