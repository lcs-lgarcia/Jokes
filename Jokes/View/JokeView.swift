//
//  JokeView.swift
//  Jokes
//
//  Created by Lucas García on 14/4/23.
//

import SwiftUI

struct JokeView: View {
    
    @State var punchlineOpacity = 0.0
    @State var currentJoke: Joke?
    
    var body: some View {
        
        Spacer()
        
        VStack{
            
            if let currentJoke = currentJoke {
                
                Text(currentJoke.setup)
                    .font(.title)
                    .multilineTextAlignment(.center)
                
                Button(action: { withAnimation(.easeIn(duration: 1.0)){
                    punchlineOpacity = 1.0
                }
                }, label: {
                    Image(systemName: "arrow.down.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40)
                        .tint(.black)
                })
                Text(currentJoke.punchline)
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .opacity(punchlineOpacity)
                
            }else {
                ProgressView()
            }
            Spacer()
            
            Button(action: {
                // Reset the interface
                punchlineOpacity = 0.0
                
                Task {
                    // Get another joke
                    withAnimation {
                        currentJoke = nil
                    }
                    currentJoke = await NetworkService.fetch()
                }
            }, label: {
                Text("Fetch another one")
            })
            .disabled(punchlineOpacity == 0.0 ? true : false)
            .buttonStyle(.borderedProminent)
        }
        .navigationTitle("RandomJokes")
        .task{
            currentJoke = await NetworkService.fetch()
        }
        
}
}

struct JokeView_Previews: PreviewProvider {
    static var previews: some View {
        JokeView()
    }
}
