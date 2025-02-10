//
//  ExtractedFunctionsBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 10/02/25.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    
    @State var backgroundColor: Color = .pink
    
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .ignoresSafeArea()
            
            // content
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            
            Button {
                self.buttonPressed()
            } label: {
                Text("PRESS ME")
                    .font(.headline)
                    .foregroundStyle(Color.white)
                    .padding()
                    .background(Color.black)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
        }
    }
    
    func buttonPressed() {
        backgroundColor = .yellow
    }
}

#Preview {
    ExtractedFunctionsBootcamp()
}
