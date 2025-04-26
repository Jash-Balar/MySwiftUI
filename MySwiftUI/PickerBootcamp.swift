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
//        Fruit(emoji: "🥭", name: "Mango"),
//        Fruit(emoji: "🍍", name: "Pineapple"),
//        Fruit(emoji: "🍓", name: "Strawberry"),
//        Fruit(emoji: "🫐", name: "Blueberry"),
//        Fruit(emoji: "🥝", name: "Kiwi"),
//        Fruit(emoji: "🍋", name: "Lemon"),
//        Fruit(emoji: "🍇", name: "Grapes"),
//        Fruit(emoji: "🍉", name: "Watermelon"),
//        Fruit(emoji: "🍑", name: "Peach"),
//        Fruit(emoji: "🍈", name: "Melon"),
//        Fruit(emoji: "🍒", name: "Cherry"),
//        Fruit(emoji: "🥥", name: "Coconut"),
//        Fruit(emoji: "🍐", name: "Pear"),
//        Fruit(emoji: "🍏", name: "Green Apple")
    ]
    
    @State private var selectionIndex: Int = 0
    @State private var selectedNumber: Int = 9

    init() {
        // NOTE: This will update the selected segment tint color to red throughout the app. Means, If there is segment in any other screen then their seelction tint color will be changed to red automatically.
        
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        
        let attributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white
        ]
        
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: UIControl.State.selected)
    }
    
    var body: some View {
        
        Picker(selection: $selectionIndex) {
            ForEach(fruits.indices, id: \.self) { fruitIndex in
                Text(fruits[fruitIndex].name)
                    .tag(fruitIndex)
            }
        } label: {
            HStack {
                Text("Selected fruit:")
                Text(fruits[selectionIndex].name)
            }
        }
        .pickerStyle(.segmented)
        .padding(.horizontal)

        
//        VStack {
//            Text("Selected fruit:")
//                .font(.headline)
//            
//            Text(fruits[selectionIndex].emoji)
//                .font(.system(size: 100))
//                .frame(width: 200, height: 200)
//                .background(
//                    RoundedRectangle(cornerRadius: 100)
//                        .fill(Color.primary.gradient.opacity(0.1))
//                )
//            
//            Picker(selection: $selectionIndex) {
//                ForEach(fruits.indices, id: \.self) { fruitIndex in
//                    Text(fruits[fruitIndex].name)
//                        .tag(fruitIndex)
//                }
//            } label: {
//                Text("Select a fruit")
//            }
//            .pickerStyle(.inline)
//
//            Text("Selected number: \(selectedNumber)")
//            
//            Picker(selection: $selectedNumber) {
//                ForEach(5..<91) { number in
//                    Text(number.description)
//                        .foregroundStyle(Color.purple)
//                        .font(.largeTitle)
//                        .tag(number)
//                }
//            } label: {
//                Text("Select a number")
//            }
//            .background(Color.yellow.gradient)
//            .pickerStyle(.wheel)
//            .frame(width: 80, height: 100)
//            .clipShape(RoundedRectangle(cornerRadius: 30))
//        }
    }
}

#Preview {
    PickerBootcamp()
}
