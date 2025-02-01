//
//  StateBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 01/02/25.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor: Color = Color.gray
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .ignoresSafeArea()

            // content
            VStack {
                Text(self.myTitle)
                    .font(.title)
                Text("Count: \(self.count)")
                    .font(.headline)
                    .underline()
                HStack {
                    Button("+") {
                        self.count += 1
                        self.backgroundColor = .green
                        self.myTitle = "Plus pressed!"
                    }
                    
                    Button("-") {
                        self.count -= 1
                        self.backgroundColor = .red
                        self.myTitle = "Minus pressed!"
                    }
                }
                .font(.largeTitle)
            }
            .foregroundStyle(Color.white)
        }
    }
}

#Preview {
    StateBootcamp()
}
