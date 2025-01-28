//
//  ColorsBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 24/01/25.
//

import SwiftUI

struct ColorsBootcamp: View {
    @State private var count: Int = 0
    @State private var name: String = ""
    var rect = CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 50, height: 30))
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20, style: .circular)
            //            .fill(Color.blue)
            //                .fill(
            //                    //                Color.primary
            //                    Color(uiColor: .secondarySystemBackground)
            //                )
                .frame(width: 300, height: 200)
            //                .foregroundStyle(Color.black)
                .foregroundStyle(Color("CustomColor"))
                .shadow(color: .black, radius: 20)
            
            Circle()
                .fill(
                    Color.red
                )
                .frame(width: 100, height: 200)
                .onTapGesture {
                    print("Red circle tapped")
                    count += 1
                }
                .shadow(color:.white, radius: 10)
            
        }
        
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 200, height: 130)
            .foregroundColor(.blue)
            .shadow(radius: 20, x: 20, y: 20)
        
    }
}

#Preview {
    ColorsBootcamp()
}
