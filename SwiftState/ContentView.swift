//
//  ContentView.swift
//  SwiftState
//
//  Created by Felipe Ramirez Vargas on 27/2/21.
//

import SwiftUI

struct ContentView: View {
    @State var pokemonName = "---"
    var body: some View {
        VStack{
           Text("Random Pokemon Generator")
            Text(pokemonName)
                .frame(
                    width: UIScreen.main.bounds.width, height: 50)
                .background(Color.blue)
                .foregroundColor(Color.white)
                .padding(10)
            Button(
                action: {print("Gotta catch 'em all")
                    self.switchPokemon()
                },
                label:{Text("Run")})
        }
    }
    func switchPokemon() {
        let list = ["Squirtle", "Bulbasaur", "Charmander", "Pikachu"]
        pokemonName = list.randomElement() ?? ""
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
