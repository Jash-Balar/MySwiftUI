//
//  PickerBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 24/04/25.
//

import SwiftUI

struct Fruit: Identifiable {
    let id = UUID()
    let emoji: String
    let name: String
}

struct PickerBootcamp: View {
    
    @State private var fruits: [Fruit] = [
        Fruit(emoji: "🍎", name: "Apple"),
        Fruit(emoji: "🍌", name: "Banana"),
        Fruit(emoji: "🍊", name: "Orange"),
        Fruit(emoji: "🥭", name: "Mango"),
        Fruit(emoji: "🍍", name: "Pineapple"),
        Fruit(emoji: "🍓", name: "Strawberry"),
        Fruit(emoji: "🫐", name: "Blueberry"),
        Fruit(emoji: "🥝", name: "Kiwi"),
        Fruit(emoji: "🍋", name: "Lemon"),
        Fruit(emoji: "🍇", name: "Grapes"),
        Fruit(emoji: "🍉", name: "Watermelon"),
        Fruit(emoji: "🍑", name: "Peach"),
        Fruit(emoji: "🍈", name: "Melon"),
        Fruit(emoji: "🍒", name: "Cherry"),
        Fruit(emoji: "🥥", name: "Coconut"),
        Fruit(emoji: "🍐", name: "Pear"),
        Fruit(emoji: "🍏", name: "Green Apple")
    ]
    
    @State private var selection: Int = 0

    var body: some View {
        
        Picker(selection: .constant(0)) {
            ForEach(fruits.indices, id: \.self) { index in
                Label {
                    Text(fruits[index].name)
                } icon: {
                    Text(fruits[index].emoji)
                }.tag(index)
            }
        } label: {
            HStack {
                Text("Filter: \(selection)")
            }
        }

        
//        VStack {
//            Text("Selected Fruit:")
//                .font(.title)
//                .bold()
//            
//            Text("\(fruits[selection].emoji)")
//                .font(.system(size: 200))
//            
//            Text(fruits[selection].name)
//                .font(.title)
//                .foregroundStyle(.secondary)
//            
//            Picker("Choose a Fruit", selection: $selection) {
//                ForEach(fruits.indices, id: \.self) { index in
//                    HStack {
//                        Text(fruits[index].emoji)
//                        Text(fruits[index].name)
//                    }
//                    .tag(index)
//                }
//            }
////            .background(Color.blue)
//            .pickerStyle(.inline)
//            .frame(height: 200)
//        }
//        .padding()
    }
}

#Preview {
    PickerBootcamp()
}
