//
//  StepperBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 25/04/25.
//

import SwiftUI

struct StepperBootcamp: View {
    @State private var stepperValue: Int = 10
    @State private var widthIncrement: CGFloat = 0
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color.black, Color.green], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
                .opacity(0.85)
            
            VStack(spacing: 20) {
                Stepper("Stepper: \(stepperValue)", value: $stepperValue)
                    .padding(.horizontal, 50)
                    .foregroundStyle(Color.white.gradient)
                
                RoundedRectangle(cornerRadius: widthIncrement)
                    .frame(width: 100 + widthIncrement, height: 100)
                
                Stepper("Stepper for rounded rectangle") {
                    // onIncrement
                    incrementWidth(amount: 20)
                } onDecrement: {
                    // onDecrement
                    decrementWidth(amount: 20)
                }
            }
            .padding()
        }
    }
    
    func incrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            if (100 + widthIncrement + amount) <= UIScreen.main.bounds.width {
                widthIncrement += amount
            }
        }
    }
    
    func decrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            if (100 + widthIncrement - amount) >= 50 {
                widthIncrement -= amount
            }
        }
    }
}

#Preview {
    StepperBootcamp()
}
