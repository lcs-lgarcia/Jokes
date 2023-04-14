//
//  JokeView.swift
//  Jokes
//
//  Created by Lucas García on 14/4/23.
//

import SwiftUI

struct JokeView: View {
    
    @State var punchlineOpacity = 0.0
    
    var body: some View {
        VStack{
            Text ("You see, mountains aren't just funny.")
                .font(.title)
                .multilineTextAlignment(.center)
            
            Button(action: { punchlineOpacity = 1.0
            }, label: {
        Image(systemName: "arrow.down.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 40)
                .tint(.black)
                   })
        Text ("They are hill areas.")
                .font(.title)
                .multilineTextAlignment(.center)
                .opacity(punchlineOpacity)
        }
        .navigationTitle("RandomJokes")
    }
        
}

struct JokeView_Previews: PreviewProvider {
    static var previews: some View {
        JokeView()
    }
}
