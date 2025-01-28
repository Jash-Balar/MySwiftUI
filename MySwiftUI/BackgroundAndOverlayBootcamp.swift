//
//  BackgroundAndOverlayBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 27/01/25.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
//        Text("Hello, World!")
//            .frame(width: 100, height: 100, alignment: .center)
//            .background(
////                Color.red
////                LinearGradient(gradient: Gradient(colors: [.gray, .green]), startPoint: .leading, endPoint: .trailing)
//                Circle()
//                    .fill(.blue)
//            )
//            .frame(width: 120, height: 120, alignment: .center)
//            .background(
//                Circle()
//                    .fill(LinearGradient(colors: [.custom, .pink], startPoint: .leading, endPoint: .trailing))
//            )
//        
//
//        Circle()
//            .fill(.pink)
//            .frame(width: 100, height: 100)
//            .overlay {
//                Text("1")
//                    .font(.largeTitle)
//                    .foregroundStyle(.white)
//            }
//            .background(
//                Circle()
//                    .fill(.purple)
//                    .frame(width: 110, height: 110)
//            )
//        
//        Rectangle()
//            .frame(width: 100, height: 100)
//            .overlay(alignment: .bottom) {
//                Rectangle()
//                    .fill(Color.blue)
//                    .frame(width: 50, height: 50)
//                
//            }

        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundStyle(Color.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            colors: [.purple, .yellow],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: .purple.opacity(0.65), radius: 10, x: 0, y: 10)
                    .overlay(alignment: .bottomTrailing) {
                        Circle()
                            .foregroundStyle(Color.blue)
                            .frame(width: 30, height: 30)
                            .overlay {
                                Text("5")
                                    .font(.headline)
                                    .foregroundStyle(Color.white)
                            }
                            .shadow(color: .purple.opacity(0.65), radius: 10, x: 5, y: 5)
                    }
            )
    }
}

#Preview {
    BackgroundAndOverlayBootcamp()
}
