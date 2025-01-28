//
//  IconsBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 27/01/25.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "books.vertical")
            .resizable() // streches the image to fill the frame.
//            .aspectRatio(contentMode: .fit) // This keeps the image at its natural size, fitting it perfectly within the frame.
//            .scaledToFit()
//            .aspectRatio(contentMode: .fill) // Scales the image to fill the frame completely, cropping parts of the image if necessary.
            .scaledToFill()
//            .font(.title)
//            .font(.system(size: 200))
            .foregroundStyle(.red)
            .frame(width: 300, height: 300) // will not effect the size of the icon. To have the frame effect the size of the icon, simply apply resizable() modifier before applying the frame.
//            .clipped() // Clips any parts of the content that overflow outside the frame's bounds.
    }
}

#Preview {
    IconsBootcamp()
}
