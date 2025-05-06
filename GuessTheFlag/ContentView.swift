//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by MacRow on 06/05/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var countries = ["estonia", "france", "germany", "ireland", "italy", "nigeria", "poland", "spain", "uk", "us"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var selectedChoices = ""
    
    var body: some View {
        ZStack{
            LinearGradient(
                gradient: Gradient(colors: [.blue.opacity(0.6), .blue]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            VStack(spacing: 30){
                VStack{
                    Text("Tap the flag of")
                        .foregroundStyle(.white)
                    Text(countries[correctAnswer].capitalized)
                        .foregroundStyle(.white)
                }
                
                ForEach(0..<3) { number in
                    Button{
                        flagTapped(number)
                    } label: {
                        Image(countries[number])
                    }
                }
            }
        }
        .alert(scoreTitle, isPresented: $showingScore){
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is???")
        }
    }
    
    func flagTapped(_ number: Int){
        if number == correctAnswer {
            scoreTitle = "Correct"
        } else {
            scoreTitle = "Wrong"
        }
        showingScore = true
    }
    
    func askQuestion(){
        countries.shuffle()
        correctAnswer = Int.random(in: 1...2)
    }
}

#Preview {
    ContentView()
}
