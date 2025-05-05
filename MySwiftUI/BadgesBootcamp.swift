//
//  BadgesBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 02/05/25.
//

import SwiftUI

struct BadgesBootcamp: View {
    
    @State private var selectedTab: Int = 0
    
    var body: some View {
        // Badge in List
        List {
            Text("Hello, world!")
            Text("Hello, world!")
            Text("Hello, world!")
                .badge(12)
            Text("Hello, world!")
                .badge("New Items")
        }
        
        // Badge in Tabbar
        TabView(selection: $selectedTab) {
            Tab(value: 0) {
                Color.yellow
            } label: {
                Image(systemName: "heart.fill")
                Text("Favorites")
            }
            .badge(12)
            
            Tab(value: 1) {
                Color.blue
            } label: {
                Image(systemName: "house.fill")
                Text("Favorites")
            }
            .badge("Refresh")
            
            Tab(value: 2) {
                Color.green
            } label: {
                Image(systemName: "heart.fill")
                Text("Favorites")
            }
        }
        .tint(Color.blue)
        .ignoresSafeArea()
    }
}

#Preview {
    BadgesBootcamp()
}
