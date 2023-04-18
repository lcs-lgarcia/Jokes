//
//  JokesApp.swift
//  Jokes
//
//  Created by Lucas García on 14/4/23.
//

import SwiftUI

@main
struct JokesApp: App {
    var body: some Scene {
        WindowGroup {
            
            TabView{
                JokeView()
                    .tabItem{
                        Label("Fresh", systemImage: "carrot")
                    }
                
                FavouriteView()
                    .tabItem{
                        Label("Favourites", systemImage: "face.smiling")
                    }
                }
                .environment(\.blackbirdDatabase, AppDatabase.instance)
            }
          
                
        }
    }

