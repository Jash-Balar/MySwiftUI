//
//  BackgroundMaterialsBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 02/05/25.
//

import SwiftUI

struct BackgroundMaterialsBootcamp: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Text("If you smell what the rock is cooking... It's probably burnt toast! 🍞")
                    .foregroundStyle(Color.white)
                    .padding(.horizontal)
                    .font(.headline)
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 30))
        }
        .ignoresSafeArea()
        .background(
            Image("theRock")
        )
    }
}

#Preview {
    BackgroundMaterialsBootcamp()
}
