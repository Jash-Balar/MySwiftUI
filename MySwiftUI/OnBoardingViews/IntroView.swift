//
//  IntroView.swift
//  MySwiftUI
//
//  Created by Jash Balar on 01/05/25.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            // background
            backgroundLayer
            
            // foreground
            if currentUserSignedIn {
                ProfileView()
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: .move(edge: .top)))
            } else {
                OnboardingView()
                    .transition(.asymmetric(
                        insertion: .move(edge: .top),
                        removal: .move(edge: .bottom)))
            }
        }
        .animation(.spring(), value: currentUserSignedIn)
    }
    
    private var backgroundLayer: some View {
        RadialGradient(
            gradient: Gradient(colors: [
                Color.pink.opacity(0.9),
                Color.orange.opacity(0.8),
                Color.purple.opacity(0.9)
            ]),
            center: .topTrailing,
            startRadius: 100,
            endRadius: UIScreen.main.bounds.height * 1.2
        )
        .ignoresSafeArea()
    }
}

#Preview {
    IntroView()
}
