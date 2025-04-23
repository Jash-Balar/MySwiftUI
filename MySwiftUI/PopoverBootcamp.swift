//
//  PopoverBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 18/03/25.
//

// Below modifiers are going to be used to present another screen
// Sheet
// Transition
// Animation

import SwiftUI

struct PopoverBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea()
            
            VStack {
                Button("Show Popover") {
                    withAnimation(Animation.spring()) {
                        showSheet.toggle()
                    }
                }
                .font(.headline)
                .foregroundStyle(Color.black.gradient)
                .padding()
                .background(
                    Capsule()
                        .fill(Color.white.gradient)
                        .stroke(Color.black, lineWidth: 3)
                )
                Spacer()
            }
            // Method - 1 : Sheet
//            .sheet(isPresented: $showSheet) {
//                NewScreen(showNewScreen: $showSheet)
//            }
            
            // Method - 2 : Transition
//            ZStack {
//                if showSheet {
//                    NewScreen(showNewScreen: $showSheet)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                }
//            }
//            .zIndex(2.0)
            
            // Method - 3 : Animation Offset
            NewScreen(showNewScreen: $showSheet)
                .padding(.top, 100)
                .offset(y: showSheet ? 0 : UIScreen.main.bounds.height)
                .animation(.spring(), value: showSheet)
        }
    }
}

struct NewScreen: View {
    
    @Environment(\.dismiss) var dismiss
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.white
                .ignoresSafeArea()
            
            Button {
//                dismiss.callAsFunction()
                withAnimation(.spring()) { // Ensure smooth transition on dismiss
//                    dismiss()
                    showNewScreen.toggle()
                }
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(Color.black)
                    .font(.largeTitle)
                    .padding()
            }
        }
    }
}

#Preview {
    PopoverBootcamp()
    //    NewScreen()
}
