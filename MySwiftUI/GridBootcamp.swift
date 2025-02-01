//
//  GridBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 30/01/25.
//

import SwiftUI

struct GridBootcamp: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
    ]
    
    var body: some View {
        ScrollView {
            Rectangle()
                .fill(Color.white)
                .frame(height: 400)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders]) {
                    Section {
                        ForEach(0..<8) { index in
                            Rectangle()
                                .frame(height: 150)
                        }
                    } header: {
                        HStack {
                            Text("Section 1")
                            Spacer()
                            Text("Fruits")
                        }
                            .font(.title)
                            .foregroundStyle(Color.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                            .background(Color.blue)
                    }
                    
                    Section {
                        ForEach(0..<50) { index in
                            RoundedRectangle(cornerRadius: 5)
                                .frame(height: 150)
                        }
                    } header: {
                        Text("Section 2")
                            .font(.title)
                            .foregroundStyle(Color.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                            .background(Color.green)
                    }
            }
        }
    }
}

#Preview {
    GridBootcamp()
}
