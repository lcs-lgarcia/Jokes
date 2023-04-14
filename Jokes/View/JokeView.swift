//
//  JokeView.swift
//  Jokes
//
//  Created by Lucas García on 14/4/23.
//

import SwiftUI

struct JokeView: View {
    var body: some View {
        VStack{
            Text ("You see, mountains aren't just funny.")
                .font(.title)
                .multilineTextAlignment(.center)
            
            Button(action: {
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
        }
        .navigationTitle("RandomJokes")
    }
        
}

struct JokeView_Previews: PreviewProvider {
    static var previews: some View {
        JokeView()
    }
}
