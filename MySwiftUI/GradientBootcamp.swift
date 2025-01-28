//
//  GradientBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 27/01/25.
//

import SwiftUI

struct GradientBootcamp: View {
    var body: some View {
//        RoundedRectangle(cornerRadius: 25)
//            .fill(
//                LinearGradient(
//                    gradient: Gradient(colors: [.black.opacity(0.75), Color("CustomColor")]),
//                    startPoint: .topLeading,
//                    endPoint: .bottomTrailing
//                )
//            )
//            .frame(width: 300, height: 200)
        
//        RoundedRectangle(cornerRadius: 25)
//            .fill(
//                RadialGradient( // Radial == Circular
//                    colors: [.clear, .custom],
//                    center: .center, startRadius: 0,
//                    endRadius: 200
//                )
//            )
//            .frame(width: 300, height: 200)
        
        RoundedRectangle(cornerRadius: 25)
            .fill(
                AngularGradient(
                    gradient: Gradient(colors: [Color.clear, Color.custom]),
                    center: .topLeading,
                    angle: .degrees(45 + 180)
                )
            )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    GradientBootcamp()
}
