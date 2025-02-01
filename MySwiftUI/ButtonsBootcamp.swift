//
//  ButtonsBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 01/02/25.
//

import SwiftUI

struct ButtonsBootcamp: View {
    @State private var title = "This is my title"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
            
            Button("Press Me") {
                self.title = "You pressed me!"
            }
            .tint(.red)
            
            Button {
                self.title = "You pressed the second button!"
            } label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.white)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Color.blue
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .shadow(radius: 10)
                        
                    )
            }
            
            Button {
                self.title = "Love you too!"
            } label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundStyle(Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)))
                    }
            }
            
            Button {
                self.title = "That all you got!"
            } label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundStyle(Color.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 3)
                    )
            }

        }
    }
}

#Preview {
    ButtonsBootcamp()
}
