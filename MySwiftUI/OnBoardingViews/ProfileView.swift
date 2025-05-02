//
//  ProfileView.swift
//  MySwiftUI
//
//  Created by Jash Balar on 01/05/25.
//

import SwiftUI

struct ProfileView: View {
    // MARK: PROPERTIES
    // app storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    // MARK: BODY
    var body: some View {
        VStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            
            Text(currentUserName ?? "Your name here")
            Text("This user is \(currentUserAge ?? 0) years old.")
            Text("Their gender is \(currentUserGender ?? "unknown").")
            
            Text("Sign out")
                .foregroundStyle(Color.white)
                .font(.headline)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.black)
                .clipShape(.buttonBorder)
                .shadow(radius: 10)
                .onTapGesture { signOut() }
        }
        .font(.title)
        .foregroundStyle(Color.purple)
        .padding()
        .padding(.vertical, 40)
        .background(Color.white)
        .clipShape(.buttonBorder)
        .shadow(radius: 10)
    }
    
    func signOut() {
        currentUserName = nil
        currentUserAge = nil
        currentUserGender = nil
        withAnimation {
            currentUserSignedIn = false
        }
    }
}

#Preview {
    ProfileView()
}
