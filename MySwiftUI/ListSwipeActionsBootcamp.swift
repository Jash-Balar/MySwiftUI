//
//  ListSwipeActionsBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 02/05/25.
//

import SwiftUI

struct ListSwipeActionsBootcamp: View {
    
    @State var fruits: [String] = ["Apple", "Banana", "Peach", "Orange", "Pineapple", "Guava", "Watermelon", "Cherry", "Mango", "Litchi"]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(fruits, id: \.self) { fruit in
                    Text(fruit)
                        .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                            Button("Archive") { }
                                .tint(.green)
                            
                            Button("Save") { }
                                .tint(.blue)
                            
                            Button("Junk") { }
                                .tint(.red)
                        }
                        .swipeActions(edge: .leading, allowsFullSwipe: true) {
                            Button("Share") { }
                                .tint(.yellow)
                        }
                }
//                .onDelete(perform: delete)
            }
            .navigationTitle("List Swipe Action")
        }
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    
}

#Preview {
    ListSwipeActionsBootcamp()
}
