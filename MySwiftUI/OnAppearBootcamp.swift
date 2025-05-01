//
//  OnAppearBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 30/04/25.
//

import SwiftUI

struct OnAppearBootcamp: View {
    
    @State private var myText: String = "Start text."
    @State private var count: Int = 0
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Text(myText)
                
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            .navigationTitle("On Appear: \(count)")
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                    myText = "This is the new text."
                }
            }
            .onDisappear {
                myText = "Ending text."
            }
        }
    }
}

#Preview {
    OnAppearBootcamp()
}
