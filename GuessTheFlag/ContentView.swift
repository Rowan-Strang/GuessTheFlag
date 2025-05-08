//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by MacRow on 06/05/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var countries = ["estonia", "france", "germany", "ireland", "italy", "nigeria", "poland", "spain", "uk", "us", "russia"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    
    @State private var showingScore = false
    @State private var showingFinalScore = false
    @State private var scoreTitle = ""
    @State private var selectedChoices = ""
    @State private var wrongScore = 0
    @State private var rightScore = 0
    @State private var flagTapped = 0
    @State private var round = 1
    
    
    var body: some View {
        ZStack{
//            RadialGradient(stops: [
//                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.4),
//                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3)
//            ], center: .top, startRadius: 100, endRadius: 800)
//            .ignoresSafeArea()
//            
            LinearGradient(
                gradient: Gradient(colors: [.blue.opacity(0.8), .black]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            VStack{
                Spacer()
                Text("Round \(NumberFormatter.localizedString(from: NSNumber(value: round), number: .spellOut).capitalized)")
                    .foregroundStyle(.secondary)
                    .font(.subheadline.weight(.heavy))
                Text("Guess the Flag")
                    .font(.largeTitle.bold())
                    .foregroundStyle(.white)
                VStack(spacing: 20){
                    VStack{
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))
                        
                        Text(countries[correctAnswer].capitalized)
                            .foregroundStyle(.white )
                            .font(.largeTitle.weight(.semibold))
                    }
                    
                    ForEach(0..<3) { number in
                        Button{
                            flagTapped(number)
                        } label: {
                            Image(countries[number])
                                .clipShape(.capsule)
                                .shadow(radius: 5)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 40)
                .background(.ultraThinMaterial)
                .clipShape(.rect(cornerRadius: 20))
                
                Spacer()
                Spacer()
                
                Text("Wrong: \(wrongScore)")
                    .font(.largeTitle.bold())
                    .foregroundStyle(.white)
                Text("Correct: \(rightScore)")
                    .font(.largeTitle.bold())
                    .foregroundStyle(.white)
                Spacer()

            }
            .padding()
        }
            .alert("Game Over", isPresented: $showingFinalScore){
                Button("New Game", role: .destructive, action: resetGame)
            } message: {
                    Text("""
Final Scores

Correct: \(rightScore)
Wrong: \(wrongScore)
""")
               
        }
            .alert(scoreTitle, isPresented: $showingScore){
                Button("Continue", action: askQuestion)
            } message: {
                if (scoreTitle == "Correct") {
                    Text("Well Done")
                } else {
                    Text("this is the flag of \(countries[flagTapped].capitalized)")
                    
                }
        }
    }
    
    func flagTapped(_ number: Int){
        flagTapped = number
        round += 1
        if number == correctAnswer {
            scoreTitle = "Correct"
            rightScore += 1
        } else {
            scoreTitle = "Wrong"
            wrongScore += 1
        }
        if (round >= 8) {
            showingFinalScore = true
        } else {
            showingScore = true
        }
    }
    
    func askQuestion(){
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
    func resetGame(){
        round = 1
        rightScore = 0
        wrongScore = 0
        askQuestion()
    }
}

#Preview {
    ContentView()
}
