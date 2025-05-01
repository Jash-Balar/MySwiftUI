//
//  ModelBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 30/04/25.
//

import SwiftUI

struct UserModel: Identifiable {
    var id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct ModelBootcamp: View {
    
    @State var users: [UserModel] = [
//        "John", "Jane", "Jim", "Jill", "Jack"
        UserModel(displayName: "John", userName: "johnappleseed", followerCount: 20, isVerified: true),
        UserModel(displayName: "Kim", userName: "appa_kim", followerCount: 100, isVerified: false),
        UserModel(displayName: "emily", userName: "blunt_force", followerCount: 59, isVerified: true),
        UserModel(displayName: "Jash", userName: "jash__21", followerCount: 209, isVerified: true)
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15) {
                        Circle()
                            .frame(width: 35, height: 35)
                        
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                            
                            Text("@\(user.userName)")
                        }
                        
                        Spacer()
                        
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundStyle(Color.blue)
                        }
                        
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)

                            Text("Followers")
                                .font(.caption)
                                .foregroundStyle(Color.gray)
                        }
                    }
                    .padding(.vertical, 10)
                }
                
//                ForEach(users, id: \.self) { user in
//                    HStack(spacing: 15) {
//                        Circle()
//                            .frame(width: 35, height: 35)
//                        Text(user.displayName)
//                    }
//                    .padding(.vertical, 10)
//                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Model Bootcamp")
        }
    }
}

#Preview {
    ModelBootcamp()
}
