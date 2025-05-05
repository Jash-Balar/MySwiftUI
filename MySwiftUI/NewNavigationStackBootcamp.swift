//
//  NewNavigationStackBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 02/05/25.
//

// https://youtu.be/GZ-hQWMjT0s?si=6CL4IZ9L7AqkHOWe
 
import SwiftUI

struct NewNavigationStackBootcamp: View {
    private let fruits: [String] = ["apple", "banana", "orange", ]
    @State private var stackPath: [String] = []
    
    var body: some View {
        NavigationStack(path: $stackPath) { // This binds navigationDestination to only String Path and brakes the Integer ones.
//        NavigationStack {
            ScrollView {
                VStack(spacing: 40) {
                    
                    Button("Super segue") {
                        stackPath.append(contentsOf: ["Coconut", "Watermelon", "Mango"])
                    }
                    .buttonStyle(.borderedProminent)
                    .controlSize(.extraLarge)
                    
                    ForEach(fruits, id: \.self) { fruit in
                        NavigationLink(value: fruit) {
                            Text(fruit)
                        }
                    }
                    
                    ForEach(1..<6) { x in
                        NavigationLink(value: x) {
                            Text("Click me: \(x)")
                        }
                    }
                }
                .font(.headline)
                .frame(maxWidth: .infinity)
            }
            .navigationTitle("New Nav Stack")
            .navigationDestination(for: String.self) { value in
                Text("Another Screen \(value)")
            }
            .navigationDestination(for: Int.self) { value in
                MySecondScreen(value: value)
            }
        }
    }
}

struct MySecondScreen: View {
    
    let value: Int
    
    init(value: Int) {
        self.value = value
        print("INIT SCREEN: \(value)")
    }
    
    var body: some View {
        Text("Screen \(value)")
    }
}

#Preview {
    NewNavigationStackBootcamp()
}
