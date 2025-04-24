//
//  TextEditorBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 24/04/25.
//

import SwiftUI

struct TextEditorBootcamp: View {
    
    @State private var textEditorText: String = "So this is the text editor"
    @State private var savedText: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                TextEditor(text: $textEditorText)
                    .textEditorStyle(PlainTextEditorStyle())
                    .font(.headline)
                    .frame(width: .infinity, height: 300)
                    .background(Color(uiColor: UIColor.systemGray4))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding(.horizontal)
                
                Button {
                    savedText = textEditorText
                } label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity, minHeight: 50)
                        .background(Color.black)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding()
                }

                Text(savedText)
                Spacer()
            }
            .navigationTitle("TextEditor Bootcamp")
        }
    }
}

#Preview {
    TextEditorBootcamp()
}
