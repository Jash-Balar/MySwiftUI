//
//  TapGestureBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 30/04/25.
//

import SwiftUI

struct TapGestureBootcamp: View {
    
    @State private var isSelected: Bool = false
    
    var body: some View {
        VStack(spacing: 40) {
            RoundedRectangle(cornerRadius: 25)
                .frame(height: 200)
                .foregroundStyle(isSelected ? Color.gray.gradient : Color.red.gradient)
            
            Button {
                withAnimation {
                    isSelected.toggle()
                }
            } label: {
                Text("Button")
                    .font(.headline)
                    .foregroundStyle(Color.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
            }

            Text("TAP Gesture")
                .font(.headline)
                .foregroundStyle(Color.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .clipShape(RoundedRectangle(cornerRadius: 25))
//                .onTapGesture {
//                    withAnimation {
//                        isSelected.toggle()
//                    }
//                }
                .onTapGesture(count: 2) {
                    withAnimation {
                        isSelected.toggle()
                    }
                }
            
            Spacer()
        }
        .padding(40)
    }
}

#Preview {
    TapGestureBootcamp()
}
