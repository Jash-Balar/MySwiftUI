//
//  StacksBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 28/01/25.
//

import SwiftUI

struct StacksBootcamp: View {
    // VStack -> Vertical
    // Hstack -> Hstack
    // Zstack -> zIndex (back to front / on top of each other)
    
    var body: some View {
//        VStack{
//            Rectangle()
//                .fill(.red)
//                .frame(width: 100, height: 100)
//            
//            Rectangle()
//                .fill(.red)
//                .frame(width: 100, height: 100)
//            
//            Rectangle()
//                .fill(.red)
//                .frame(width: 100, height: 100)
//        }
//        
//        HStack{
//            Rectangle()
//                .fill(.red)
//                .frame(width: 100, height: 100)
//            
//            Rectangle()
//                .fill(.red)
//                .frame(width: 100, height: 100)
//            
//            Rectangle()
//                .fill(.red)
//                .frame(width: 100, height: 100)
//        }
//        
//        ZStack{
//            Rectangle()
//                .fill(.green)
//                .frame(width: 140, height: 140)
//            
//            Rectangle()
//                .fill(.yellow)
//                .frame(width: 120, height: 120)
//            
//            Rectangle()
//                .fill(.red)
//                .frame(width: 100, height: 100)
//        }
        
        VStack(spacing: 50) {
            
            Circle()
                .frame(width: 100, height: 100)
                .overlay {
                    Text("1")
                        .font(.title)
                        .foregroundStyle(.white)
                }
            
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                
                Text("1")
                    .font(.title)
                    .foregroundStyle(.white)
            } 
        }
    }
}

#Preview {
    StacksBootcamp()
}
