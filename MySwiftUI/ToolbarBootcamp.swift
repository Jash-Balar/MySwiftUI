//
//  ToolbarBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 02/05/25.
//

import SwiftUI

struct ToolbarBootcamp: View {
    
    @State private var text: String = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.indigo.ignoresSafeArea()
                ScrollView {
                    VStack {
                        Text("Hey 🤩")
                            .foregroundStyle(Color.white)
                        
                        TextField("Your text here", text: $text)
                            .padding(.horizontal)
                            .frame(height: 55)
                            .frame(maxWidth: .infinity)
                            .background(.ultraThinMaterial)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                            .padding()
                            .shadow(radius: 5)
                    }
                }
            }
            .navigationTitle("Toolbar")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "heart.fill")
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "gear")
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                ToolbarItem(placement: .bottomBar) {
                    Image(systemName: "gear")
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                ToolbarItem(placement: .keyboard) {
                    HStack {
                        Button {
                            print("Keyboard toolbar item gear pressed")
                        } label: {
                            Image(systemName: "gear")
                                .frame(maxWidth: .infinity, alignment: .trailing)
                        }
                        Button {
                            print("Keyboard toolbar item heart pressed")
                        } label: {
                            Image(systemName: "heart.fill")
                                .frame(maxWidth: .infinity, alignment: .trailing)
                        }
                        Button {
                            print("Keyboard toolbar item house pressed")
                        } label: {
                            Image(systemName: "house.fill")
                                .frame(maxWidth: .infinity, alignment: .trailing)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ToolbarBootcamp()
}
