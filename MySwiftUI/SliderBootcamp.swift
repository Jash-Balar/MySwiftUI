//
//  SliderBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 25/04/25.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State private var sliderValue: Double = 3
    @State private var color: Color = Color.red
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Rating:")
            
            Text(
//                sliderValue.description
                String(format: "%.0f", sliderValue)
            )
            .foregroundStyle(color)
            
//            Slider(value: $sliderValue)
//            Slider(value: $sliderValue, in: 1...5)
//            Slider(value: $sliderValue, in: 1...5, step: 1.0)
            Slider(value: $sliderValue, in: 1...5, step: 1.0) {
                Text("Title")
            } minimumValueLabel: {
                Text("1")
            } maximumValueLabel: {
                Text("5")
            } onEditingChanged: { _ in
                color = Color.green
            }
            .padding(.horizontal, 50)
            .tint(Color.red)
        }
    }
}

#Preview {
    SliderBootcamp()
}
