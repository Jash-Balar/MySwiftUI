//
//  FrameBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 27/01/25.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text("Hello, World!")
            .background(Color.red)
            .frame(height: 100, alignment: .bottom)
            .background(.cyan)
            .frame(width: 150, alignment: .leading)
            .background(.green)
            .frame(maxWidth: .infinity,alignment: .trailing)
            .background(.yellow)
            .frame(height: 400, alignment: .bottom)
            .background(.purple)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(.red)
    }
}

#Preview {
    FrameBootcamp()
}
