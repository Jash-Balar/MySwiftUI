//
//  GridBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 30/01/25.
//

import SwiftUI

struct GridBootcamp: View {
    
    let columns: [GridItem] = [
        GridItem(.fixed(50), spacing: nil, alignment: nil),
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
    ]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            
            Text("Placeholder")
            Text("Placeholder")
        }
    }
}

#Preview {
    GridBootcamp()
}
