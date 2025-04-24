//
//  ForEachBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 30/01/25.
//

import SwiftUI

struct PersonName: Identifiable {
    var id: UUID
    var name: String
}

struct ForEachBootcamp: View {
    let names: [PersonName] = [
        .init(id: UUID(), name: "Jash"),
        .init(id: UUID(), name: "Balar"),
    ]
    
    let data: [String] = ["Jash", "Balar", "SwiftUI", "Codable", "Combine", "UIKit", "AppKit", "WatchOS", "macOS", "iOS", "tvOS", "Objective-C"]
    let myString: String = "Hello"
    
    var body: some View {
        VStack {
//            ForEach(data.indices, id: \.self) { index in
//                Text("New Item: \(data[index]) - Index: \(index)")
//            }
            
            ForEach(Array(data.enumerated()), id: \.offset) { offSet, element in
                Text("New Item: \(element) - Index: \(offSet)")
            }
            
//            ForEach(Array(names.enumerated()), id: \.offset) { offset, element in
//                Text(element.name)
//                Print(value: element.id)
//                Print(value: element.name)
//            }
        }
    }
}

extension View {
    func Print(value: Any...) -> some View {
        print(value)
        return EmptyView()
    }
}

#Preview {
    ForEachBootcamp()
}
