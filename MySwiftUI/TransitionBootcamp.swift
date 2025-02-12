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
                Button("Button") {
                    showView.toggle()
                }
                
                Spacer()
            }
            .background(Color.yellow)
            
            RoundedRectangle(cornerRadius: 30)
                .frame(height: UIScreen.main.bounds.height / 2)
                .opacity(showView ? 1 : 0.0)
        }
        .ignoresSafeArea(edges: [.bottom])
    }
}

#Preview {
    TransitionBootcamp()
}
