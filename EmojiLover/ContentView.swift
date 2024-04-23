//
//  ContentView.swift
//  EmojiLover
//
//  Created by Admin on 19/04/2024.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case 👍🏾, 😅, 🙌🏾, 🎉, 🌴
}

struct ContentView: View {
    @State var selection: Emoji = .🎉
    
    var body: some View {
        NavigationView {
            VStack {
                Text(selection.rawValue)
                    .font(.system(size: 150))
                
                Picker("Select Emoji", selection: $selection){
                    ForEach(Emoji.allCases, id: \.self){
                        Text($0.rawValue)
                    }
                }.pickerStyle(.segmented)
            }
            .navigationTitle("Emoji Lovers!")
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
