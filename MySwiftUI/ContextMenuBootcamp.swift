//
//  ContextMenuBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 24/04/25.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State private var backgroundColor: Color = .primary
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 20.0) {
                Image(systemName: "house.fill")
                    .font(.title)
                
                Text("Jash's house")
                    .font(.headline)
                
                Text("How to use Context Menu?")
                    .font(.subheadline)
            }
            .foregroundStyle(.white)
            .padding(30)
            .background(backgroundColor)
            .clipShape(RoundedRectangle(cornerRadius: 30))
            .contextMenu {
                //            Text("Menu item 1")
                //            Text("Menu item 2")
                //            Text("Menu item 3")
                Button {
                    backgroundColor = Color.yellow
                } label: {
                    Label("Lodge this house", systemImage: "house.lodge")
                }
                
                Button {
                    backgroundColor = Color.black
                } label: {
                    Label("Call", systemImage: "phone")
                }
                
                Button {
                    backgroundColor = Color.green
                } label: {
                    HStack {
                        Text("Message")
                        Image(systemName: "message")
                    }
                }
                
                Button {
                    backgroundColor = Color.red
                } label: {
                    HStack {
                        Text("Record and send")
                        Image(systemName: "waveform")
                    }
                }
            }
        }
    }
}

#Preview {
    ContextMenuBootcamp()
}
