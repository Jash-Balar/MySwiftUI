//
//  ToggleBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 24/04/25.
//

import SwiftUI

struct ToggleBootcamp: View {
    @State private var isToggleOn: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Toggle(isOn: $isToggleOn) {
                    Text("Label")
                }
                .tint(Color.purple)
//                .labelsHidden()
                .padding()
            }
            HStack {
                Text("Status: ")
                if isToggleOn {
                    Text("Online")
                        .font(.title3)
                        .bold()
                        .underline()
                        .foregroundStyle(Color.green)
                } else {
                    Text("Offline")
                        .font(.headline)
                        .foregroundStyle(Color.gray)
                }
            }
        }
    }
}

#Preview {
    ToggleBootcamp()
}
