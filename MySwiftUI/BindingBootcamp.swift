//
//  BindingBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 10/02/25.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var title: String = "This is the title"
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                Text(title.uppercased())
                    .font(.headline)
                    .foregroundStyle(Color.white)
                
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    @Binding var title: String
    @State var buttonColor: Color = Color.blue
    
    var body: some View {
        Button {
            self.backgroundColor = Color.orange
            self.buttonColor = Color.pink
            self.title = "This is the new title"
        } label: {
            Text("Button")
                .foregroundStyle(Color.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}

#Preview {
    BindingBootcamp()
}
