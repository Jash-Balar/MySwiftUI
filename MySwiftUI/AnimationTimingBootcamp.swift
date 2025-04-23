//
//  AnimationTimingBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 11/02/25.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State var isAnimating: Bool = false
    let timing: Double = 5.0
    
    var body: some View {
        VStack {
            
            Button("Press Me") {
                isAnimating.toggle()
            }
            .font(.headline)
            .foregroundStyle(Color.black)
            .frame(width: 100, height: 50)
            .background(Color.white)
            .clipShape(.capsule)
            
            Spacer()
            
            Text("linear: speed remains the same")
                .font(.headline)
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .frame(
                    width: isAnimating ? 350 : 50,
                    height: 50)
                .animation(Animation.linear(duration: timing), value: isAnimating)
            
            Text("easeIn: starts slow and then catches up with the timing")
                .font(.headline)
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .frame(
                    width: isAnimating ? 350 : 50,
                    height: 50)
                .animation(Animation.easeIn(duration: timing), value: isAnimating)
            
            Text("easeInOut: starts slow, ends fast")
                .font(.headline)
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .frame(
                    width: isAnimating ? 350 : 50,
                    height: 50)
                .animation(Animation.easeInOut(duration: timing), value: isAnimating)
            
            Text("easeOut: starts fast, ends slow")
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
            // response = timing
            // damping friction = the more the value, the less the bounce
            
            Spacer()
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
