//
//  ScrollViewBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 30/01/25.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
//        ScrollView(.horizontal) {
//            HStack {
//                RoundedRectangle(cornerRadius: 20)
//                    .fill(Color.red)
//                    .frame(width: 390, height: 300)
//                
//                RoundedRectangle(cornerRadius: 20)
//                    .fill(Color.blue)
//                    .frame(width: 390, height: 300)
//                
//                RoundedRectangle(cornerRadius: 20)
//                    .fill(Color.orange)
//                    .frame(width: 390, height: 300)
//                
//                RoundedRectangle(cornerRadius: 20)
//                    .fill(Color.cyan)
//                    .frame(width: 390, height: 300)
//                
//                RoundedRectangle(cornerRadius: 20)
//                    .fill(Color.green)
//                    .frame(width: 390, height: 300)
//            }
//        }
        
        ScrollView {
            LazyVStack {
                ForEach(0..<5) { _ in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<5) { index in
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color.white)
                                    .frame(width: 300, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViewBootcamp()
}
