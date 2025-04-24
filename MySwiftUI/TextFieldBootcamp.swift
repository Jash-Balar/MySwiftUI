//
//  TextFieldBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 24/04/25.
//

import SwiftUI

struct TextFieldBootcamp: View {
    
    @State private var textFieldtext: String = ""
    @State private var dataArray: [String] = []
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Type something here...", text: $textFieldtext)
//                    .textFieldStyle(.roundedBorder)
                    .font(.headline)
                    .padding()
                    .foregroundStyle(Color.red)
                    .background(Color.gray.opacity(0.3))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding(.horizontal)
                
                Button {
                    if textIsAppropriate() {
                        savetext()
                    }
                } label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundStyle(Color.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(textIsAppropriate() ? Color.black : Color.gray)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding()
                }
                .disabled(!textIsAppropriate())
            }
            
            List {
                ForEach(dataArray, id: \.self) { item in
                    Text(item)
                }
                .listRowBackground(Color.red)
            }
            
            Spacer()
            .navigationTitle("TextField Bootcamp")
        }
    }
    
    func textIsAppropriate() -> Bool {
        return textFieldtext.count >= 3
    }
    
    func savetext() {
        dataArray.append(textFieldtext)
        textFieldtext = ""
    }
}

#Preview {
    TextFieldBootcamp()
}
