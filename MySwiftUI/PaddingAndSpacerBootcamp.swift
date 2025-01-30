//
//  PaddingAndSpacerBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 28/01/25.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
//        VStack(alignment: .leading) {
//            Text("Hello, World!")
//                .font(.largeTitle)
//                .fontWeight(.semibold)
//                .padding(.bottom, 20)
//            
//            Text("This is the description of what we will do on this screen. It is multiple lines and we will align the text to the leading edge.")
//        }
//        .padding()
//        .padding(.vertical, 10)
//        .background(
//            Color.white
//                .clipShape(RoundedRectangle(cornerRadius: 10))
//                .shadow(color: .black.opacity(0.5), radius: 10, x: 0, y: 10)
//        )
        
        HStack {
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
            
            Spacer()
                .frame(height: 20)
                .background(.yellow)

            Rectangle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
        }
    }
}

#Preview {
    PaddingAndSpacerBootcamp()
}
