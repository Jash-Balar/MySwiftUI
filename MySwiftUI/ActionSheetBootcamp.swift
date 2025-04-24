//
//  ActionSheetBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 24/04/25.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    
    @State private var backgroundColor: Color = .clear
    @State private var showActionSheet: Bool = false
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            VStack {
                HStack {
                    Circle()
                        .frame(width: 30, height: 30)
                    
                    Text("@username")
                    
                    Spacer()
                    
                    Button {
                        showActionSheet.toggle()
                    } label: {
                        Image(systemName: "ellipsis")
                    }
                    .tint(Color.black)
                }
                .padding(.horizontal)
                
                Rectangle()
                    .aspectRatio(1.0, contentMode: .fit)
            }
            .confirmationDialog("This is the title", isPresented: $showActionSheet) {
                Button("Share") { }
                Button("Report", role: .destructive) { }
                Button("Delete", role: .destructive) { }
            } message: {
                Text("What would you like to do?")
            }
        }
    }
}

#Preview {
    ActionSheetBootcamp()
}
