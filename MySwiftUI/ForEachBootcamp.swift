//
//  ForEachBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 30/01/25.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["Jash", "Balar", "SwiftUI", "Codable", "Combine", "UIKit", "AppKit", "WatchOS", "macOS", "iOS", "tvOS", "Objective-C"]
    let myString: String = "Hello"
    
    var body: some View {
        VStack {
            ForEach(data.indices) { index in
                Text("New Item: \(data[index]) - Index: \(index)")
            }
        }
    }
}

#Preview {
    ForEachBootcamp()
}
