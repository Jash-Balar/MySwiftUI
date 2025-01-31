//
//  InitializerBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 30/01/25.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    let count: Int
    let title: String
    let backgroundColor: Color
    
    init(count: Int, title: Fruit) {
        self.count = count
        self.title = title == .apple ? "Fizzy Apples" : "Pulpy Oranges"
        self.backgroundColor = title == .apple ? Color.red : Color.orange
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 10) {
            Text("\(count)")
                .font(.largeTitle)
                .underline()
            
            Text("\(title)")
                .font(.headline)
        }
        .foregroundStyle(Color.white)
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    HStack {
        InitializerBootcamp(count: 10, title: .apple)
        InitializerBootcamp(count: 5, title: .orange)
    }
}
