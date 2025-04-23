//
//  NavigationStackBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 22/04/25.
//

import SwiftUI

struct NavigationStackBootcamp: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                NavigationLink("Hello, world!") {
                    MyOtherScreen()
                }
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle("All Inboxes")
            .navigationBarTitleDisplayMode(.automatic)
//            .toolbar(.hidden) <-- hides navigation bar
        }
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
                .navigationTitle("Green screen!")
                .toolbar(.hidden)
            
            VStack {
                HStack {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "arrow.left")
                            .resizable()
                            .foregroundStyle(Color.white)
                            .font(.headline)
                            .frame(width: 30, height: 30)
                            .padding()
                    }
                    Spacer()
                }
                
                Spacer()
            }
            
            VStack {
                NavigationLink {
                    LastScreen()
                } label: {
                    Image(systemName: "arrow.right")
                        .resizable()
                        .foregroundStyle(Color.white)
                        .font(.headline)
                        .frame(width: 30, height: 30)
                }
            }
        }
    }
}

struct LastScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack {
                HStack {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "arrow.left")
                            .resizable()
                            .foregroundStyle(Color.white)
                            .font(.headline)
                            .frame(width: 30, height: 30)
                            .padding()
                    }
                    Spacer()
                }
                Spacer()
            }
            
            Text("Last Screen")
                .font(.title)
                .foregroundStyle(Color.white)
                .toolbar(.hidden)
        }
    }
}

#Preview {
    NavigationStackBootcamp()
//    LastScreen()
}
