//
//  ShapeBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 24/01/25.
//

import SwiftUI

struct ShapeBootcamp: View {
    var body: some View {
        VStack(spacing: 20) {
            ZStack {
                Circle()
                    .trim(from: 0.5, to: 1.0)
                    .fill(Color.blue)
                    .stroke(Color.yellow, style: StrokeStyle(lineWidth: 16, lineCap: .round, dash: [25, 70, 90]))
                Circle()
                    .trim(from: 0.5, to: 1.0)
                    .fill(Color.pink)
                    .frame(width: 400)
                Circle()
                    .trim(from: 0.5, to: 1.0)
                    .fill(Color.green)
                    .frame(width: 300)
                Circle()
                    .trim(from: 0.5, to: 1.0)
                    .fill(Color.orange)
                    .frame(width: 200)
                Circle()
                    .trim(from: 0.5, to: 1.0)
                    .fill(Color.purple)
                    .frame(width: 100)
                    .padding(.horizontal, 30)
                //            Circle()
                //                .stroke(style: StrokeStyle(lineWidth: 10))
                ////                .fill(Color.yellow)
                //            // OR
                //                .foregroundStyle(Color.yellow)
                //                .frame(width: 200)
            }
            
            RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
            
            Ellipse()
                .frame(width: 200, height: 200)
            
            Capsule(style: .continuous)
                .frame(width: 200, height: 100)
            
            HStack(spacing: 10) {
                Capsule(style: .continuous)
                    .frame(width: 60, height: 200)
                Capsule(style: .continuous)
                    .frame(width: 30, height: 100)
                Capsule(style: .continuous)
                    .frame(width: 60, height: 200)
            }
        }
    }
}

#Preview {
    ShapeBootcamp()
}
