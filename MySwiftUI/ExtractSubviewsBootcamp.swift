//
//  ExtractSubviewsBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 10/02/25.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    var body: some View {
        ZStack {
            Color.custom
                .ignoresSafeArea()
            
            contentLayer
        }
    }
    
    // only useful when data is not going to change.
    var extractedView: some View {
        VStack {
            Text("1")
            Text("Apples")
        }
        .padding()
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
    
    var contentLayer: some View {
        HStack {
            MyItem(title: "Apple", count: 10, color: Color.red)
            MyItem(title: "Banana", count: 2, color: Color.yellow)
            MyItem(title: "Guava", count: 1, color: Color.green)
        }
    }
}

#Preview {
    ExtractSubviewsBootcamp()
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text("\(title)")
        }
        .padding()
        .background(color)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
