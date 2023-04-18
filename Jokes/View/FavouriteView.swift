//
//  FavouriteView.swift
//  Jokes
//
//  Created by Lucas García on 18/4/23.
//
import Blackbird
import SwiftUI

struct FavouriteView: View {
    
    
    @BlackbirdLiveModels({ db in
        try await Joke.read(from: db)
    }) var favouriteJokes
    
                         var body: some View {
        
        NavigationView{
            
            List(favouriteJokes.results){currentJoke in
                VStack(alignment:.leading){
                    Text(currentJoke.setup)
                        .bold()
                    Text(currentJoke.punchline)
                }
            }
            .navigationTitle("Favourite Jokes")
        }
    }
}

struct FavouriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavouriteView()
            .environment(\.blackbirdDatabase, AppDatabase.instance)
    }
}
