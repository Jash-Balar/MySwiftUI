//
//  ColorPickerBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 25/04/25.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    
    @State private var backgroundColor: Color = .green
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            ColorPicker("Select a color",
                        selection: $backgroundColor,
                        supportsOpacity: true)
            .foregroundStyle(Color.white)
            .font(.headline)
            .padding()
            .background(Color.black)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .padding(100)
        }
    }
}

#Preview {
    ColorPickerBootcamp()
}
