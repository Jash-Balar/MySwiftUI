//
//  AnimationTimingBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 11/02/25.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State var isAnimating: Bool = false
    let timing: Double = 10.0
    
    var body: some View {
        VStack {
            
            Button("Press Me") {
                isAnimating.toggle()
            }
            .foregroundStyle(Color.black)
            
            Spacer()
            Text("Speed remains the same")
                .font(.headline)
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .frame(
                    width: isAnimating ? 350 : 50,
                    height: 50)
                .animation(Animation.linear(duration: timing), value: isAnimating)
            
            Text("Starts slow and then catches up with the timing")
                .font(.headline)
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .frame(
                    width: isAnimating ? 350 : 50,
                    height: 50)
                .animation(Animation.easeIn(duration: timing), value: isAnimating)
            
            Text("Starts slow, ends fast")
                .font(.headline)
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .frame(
                    width: isAnimating ? 350 : 50,
                    height: 50)
                .animation(Animation.easeInOut(duration: timing), value: isAnimating)
            
            Text("Starts fast, ends slow")
                .font(.headline)
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .frame(
                    width: isAnimating ? 350 : 50,
                    height: 50)
                .animation(Animation.easeOut(duration: timing), value: isAnimating)
            
            Text("Spring animation")
                .font(.headline)
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .frame(
                    width: isAnimating ? 350 : 50,
                    height: 50)
                .animation(Animation.spring(response: 0.3, dampingFraction: 0.3, blendDuration: 1.0), value: isAnimating)
            
            Spacer()
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
