//
//  Home.swift
//  ContactScrollAnimation1212
//
//  Created by 张亚飞 on 2022/12/12.
//

import SwiftUI

struct Home: View {
    @State var characters: [Character] = []
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack(spacing: 0) {
                ForEach(characters) {character in
                    ContactForCharacter(character: character)
                }
            }
        }
        .onAppear {
           characters = fetchCharacters()
        }
    }
    
    @ViewBuilder
    func ContactForCharacter(character: Character) -> some View {
        
    }
    
    func fetchCharacters() ->[Character] {
        let alphabets: String = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        var characters: [Character] = []
        
        characters = alphabets.compactMap({ character -> Character? in
            return Character(value: String(character))
        })
        
        let colors: [Color] = [.red, .yellow, .pink, .orange, .cyan, .indigo, .purple, .blue]
        
        for index in characters.indices {
            characters[index].index = index
            characters[index].color = colors.randomElement()!
        }
        
        return characters
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
