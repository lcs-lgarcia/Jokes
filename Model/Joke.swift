//
//  Joke.swift
//  Jokes
//
//  Created by Lucas García on 14/4/23.
//

import Foundation

struct Joke: Identifiable{
    let type: String
    let setup: String
    let punchline: String
    let id: Int
}


let exampleJoke = Joke(type: "general", setup: "How much does a hipster weigh?", punchline: "An instagram", id: 146)
