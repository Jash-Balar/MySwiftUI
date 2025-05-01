//
//  DarkModeBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 30/04/25.
//

import SwiftUI

struct DarkModeBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    Text("This text is PRIMARY")
                        .foregroundStyle(Color.primary)
                    Text("This text is SECONDARY")
                        .foregroundStyle(Color.secondary)
                    Text("This text is BLACK")
                        .foregroundStyle(Color.black)
                    Text("This text is WHITE")
                        .foregroundStyle(Color.white)
                    Text("This text is RED")
                        .foregroundStyle(Color.red)
                    Text("This color is globally adaptive")
                        .foregroundStyle(Color.custom)
                    Text("This color is locally adaptive")
                        .foregroundStyle(colorScheme == .light ? Color.green : Color.yellow)
                }
                .navigationTitle("Dark Mode Bootcamp")
            }
        }
    }
}

#Preview {
    DarkModeBootcamp()
//        .preferredColorScheme(.light)
        .preferredColorScheme(.dark)
}
