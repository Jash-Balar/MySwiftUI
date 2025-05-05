//
//  ButtonStylesBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 02/05/25.
//

import SwiftUI

struct ButtonStylesBootcamp: View {
    var body: some View {
        VStack {
            Button {
                
            } label: {
                Text("Button Title")
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent) // This both are applicable to label only
            .controlSize(.large)             // Means it will be applied to the text size of the button not to the frame
            .buttonBorderShape(.roundedRectangle(radius: 25))
            
            Button("Button Title") { }
            .font(.headline)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.mini)
            .buttonStyle(.borderedProminent)
//            .buttonStyle(.plain)
            
            Button("Button Title") { }
            .font(.headline)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.regular)
            .buttonStyle(.borderedProminent)
//            .buttonStyle(.bordered)
            
            Button("Button Title") { }
            .font(.headline)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.small)
            .buttonStyle(.borderedProminent)
            
            Button("Button Title") { }
            .font(.headline)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.large)
            .buttonStyle(.borderedProminent)
//            .buttonStyle(.borderless)
        }
        .padding()
    }
}

#Preview {
    ButtonStylesBootcamp()
        .preferredColorScheme(.dark)
}
