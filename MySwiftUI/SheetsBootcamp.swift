//
//  SheetsBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 18/03/25.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea(.all)
            
            Button {
                self.showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundStyle(Color.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white)
                    .clipShape(.capsule)
            }
            // fullScreenCover or Sheet, only one will work
            // Can only use one view to present per hierarchy
            .fullScreenCover(isPresented: $showSheet) {
                SecondScreen()
            }
            .sheet(isPresented: $showSheet) {
                // Never use any conditionals to present different screen e.g, if else, ternary (?:)
                SecondScreen()
            }
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Color.red
                .ignoresSafeArea(.all)
            
            Button {
                self.dismiss.callAsFunction()
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(Color.white)
                    .font(.largeTitle)
                    .padding(20)
            }
        }
    }
}

#Preview {
    SheetsBootcamp()
}
