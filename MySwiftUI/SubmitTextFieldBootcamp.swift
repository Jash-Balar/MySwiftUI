//
//  SubmitTextFieldBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 02/05/25.
//

import SwiftUI

struct SubmitTextFieldBootcamp: View {
    
    @State private var text: String = ""
    
    var body: some View {
        TextField("Placeholder...", text: $text)
            .submitLabel(.route)
            .onSubmit {
                // some action
                print("Something to the console! perhaps: \(text)")
            }
        
        TextField("Placeholder...", text: $text)
            .submitLabel(.next)
            .onSubmit {
                // some action
                print("Something to the console! perhaps: \(text)")
            }
        
        TextField("Placeholder...", text: $text)
            .submitLabel(.search)
            .onSubmit {
                // some action
                print("Something to the console! perhaps: \(text)")
            }
    }
}

#Preview {
    SubmitTextFieldBootcamp()
}
