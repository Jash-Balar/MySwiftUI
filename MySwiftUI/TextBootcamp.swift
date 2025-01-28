//
//  TextBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 24/01/25.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World! Welcome to MySwiftUI Project. Here I am keen to learn all the essentials of SwiftUI to level up my knowledge on the swift programming language".capitalized)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .bold()
            .italic()
            .underline(true, pattern: .dashDotDot, color: .red)
            .strikethrough(true, pattern: .dash, color: Color.white)
            .foregroundStyle(.green)
//            .font(.system(.largeTitle, design: .monospaced, weight: .black))
//            .font(.system(size: 20, weight: .bold, design: .serif))
//            .multilineTextAlignment(.leading)
            .padding(.horizontal)
//            .lineSpacing(12)
//            .baselineOffset(20) // set negative float to see offset of negative
//            .kerning(8)
//            .minimumScaleFactor(0.1)
//            .frame(width: 200, height: 200, alignment: .center)
//            .background(Color.yellow)
    }
}

#Preview {
    TextBootcamp()
}
