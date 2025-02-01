//
//  SafeAreaBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 01/02/25.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        ScrollView {
            Text("Title goes here")
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            ForEach(0..<10) { index in
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.white)
                    .frame(height: 150)
                    .shadow(radius: 10)
                    .padding(20)
            }
        }
        .background(Color.red)
        .background(
            Color.blue
                .ignoresSafeArea(edges: .vertical)
        )
    }
}

#Preview {
    SafeAreaBootcamp()
}
