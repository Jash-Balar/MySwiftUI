//
//  TransitionBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 11/02/25.
//

import SwiftUI

struct TransitionBootcamp: View {

    @State var showView: Bool = false

    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("Press Me") {
                    withAnimation(.spring(response: 0.25, dampingFraction: 0.5, blendDuration: 1.0)) {
                        showView.toggle()
                    }
                }

                Spacer()
            }

            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height / 2)
                    .transition(.move(edge: .bottom))
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

struct TransitionBootcamp2: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                
                Button("Press Me") {
                    withAnimation(.easeInOut(duration: 0.5)) {
                        showView.toggle() // No withAnimation needed
                    }
                }
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height / 2)
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom).combined(with: .opacity),
                        removal: .move(edge: .bottom).combined(with: .opacity))
                    )
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    TransitionBootcamp()
}
