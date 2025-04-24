//
//  ListBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 23/04/25.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = ["Apple", "Banana", "Peach", "Orange", "Pineapple", "Guava", "Watermelon", "Cherry", "Mango", "Litchi"]
    @State var veggies: [String] = ["Carrot", "Broccoli", "Cucumber", "Bell Pepper", "Tomato", "Onion", "Potato", "Spinach", "Beetroot", "Radish"]
     
    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(fruits, id: \.self) { fruit in
                        HStack {
                            Text(fruit.capitalized)
                            Spacer()
                            Image(systemName: "tree")
                            Image(systemName: "apple.meditate")
                            Image(systemName: "tag")
                        }
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    
                } header: {
                    HStack {
                        Image(systemName: "bag.fill")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundStyle(Color.red.gradient)
                            .frame(width: 15, height: 15)
                        Text("Fruits")
                            .font(.subheadline)
                            .bold()
                            .underline()
                        
                        Spacer()
                        
                        Text("Total items: \(fruits.count)")
                    }
                }
                .textCase(nil) // Removes default Text style in header
                
                Section {
                    ForEach(veggies, id: \.self) { veggie in
                        Text(veggie)
                            .foregroundStyle(Color.white)
                            .font(.subheadline)
                            .padding(.vertical, 5)
                    }
                    .listRowBackground(Color.purple)
                    .listRowSeparatorTint(Color.white, edges: .all)
                } header: {
                    HStack {
                        Image(systemName: "carrot")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundStyle(Color.orange)
                            .frame(width: 20, height: 20)
                        
                        Text("Vegetables")
                            .font(.subheadline)
                            .bold()
                            .underline(color: Color.orange)
                        
                        Spacer()
                        
                        Text("Total items: \(veggies.count)")
                    }
                }
                .textCase(nil) // Removes default Text style in header
            }
            .navigationTitle("Grocery List")
            .toolbar {
                ToolbarItem(placement: .automatic) { addButton }
                ToolbarItem(placement: .automatic) { EditButton() }
            }
        }
    }
    
    var addButton: some View {
        Button("Add") {
            add()
        }
    }
    
    func add() {
        fruits.append("Coconut")
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indexSet: IndexSet, to newOffset: Int) {
        fruits.move(fromOffsets: indexSet, toOffset: newOffset)
    }
}

#Preview {
    ListBootcamp()
}
