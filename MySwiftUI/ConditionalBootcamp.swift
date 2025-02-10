//
//  ConditionalBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 10/02/25.
//

import SwiftUI

struct ConditionalBootcamp: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack {
            
            Button("isLoading: \(isLoading.description)") {
                isLoading.toggle()
            }
            
            Button {
                self.showCircle.toggle()
            } label: {
                Text("Show Circle Button: \(showCircle.description)")
            }
            
            Button {
                self.showRectangle.toggle()
            } label: {
                Text("Show Rectangle Button: \(showRectangle.description)")
            }
            
            if showCircle {
                Circle()
                    .fill(Color.yellow)
                    .frame(width: 100)
            } else if showRectangle {
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 100, height: 100)
            }
            
            if showCircle || showRectangle {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.red)
                    .frame(width: 200, height: 100)
            }
            
            if isLoading {
                ProgressView()
            }
        }
    }
}

#Preview {
    ConditionalBootcamp()
}
