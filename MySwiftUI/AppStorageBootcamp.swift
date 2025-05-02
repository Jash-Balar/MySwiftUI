//
//  AppStorageBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 01/05/25.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
//    @State var currentUserName: String?
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add Name Here")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button("Save") {
                currentUserName = "Zeel"
//                UserDefaults.standard.set(currentUserName, forKey: "name")
            }
            .buttonStyle(.borderedProminent)
        }
//        .onAppear {
//            currentUserName = UserDefaults.standard.string(forKey: "name")
//        }
    }
}

#Preview {
    AppStorageBootcamp()
}
