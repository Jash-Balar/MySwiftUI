//
//  TernaryBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 10/02/25.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "Stating State" : "Ending State")
            
            RoundedRectangle(cornerRadius: isStartingState ? 25.0 : 0)
                .fill(isStartingState ? Color.red : Color.yellow)
                .frame(
                    width: isStartingState ? 200 : 100,
                    height: isStartingState ? 100 : 50)
            
            Spacer()
        }
    }
}

#Preview {
    TernaryBootcamp()
}
