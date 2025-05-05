//
//  FocusedStateBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 02/05/25.
//

import SwiftUI

struct FocusedStateBootcamp: View {
    
    enum OnBoardingFields: Hashable {
        case email
        case password
    }
    
    @State private var email: String = ""
//    @FocusState private var emailInFocus
    @State private var password: String = ""
//    @FocusState private var passwordInFocus
    @FocusState private var fieldInFocus: OnBoardingFields?
    
    var body: some View {
        VStack {
            TextField("Email", text: $email)
//                .focused($emailInFocus)
                .focused($fieldInFocus, equals: .email)
                .padding(.leading)
                .frame(height: 55)
                .background(.gray.opacity(0.3), in: .rect(cornerRadius: 12))
                .overlay {
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(lineWidth: 2)
                        .foregroundStyle(fieldInFocus == .email ? Color.primary : Color.clear)
                }
                .padding(.horizontal, 12)
            
            SecureField("Password", text: $password)
//                .focused($passwordInFocus)
                .focused($fieldInFocus, equals: .password)
                .padding(.leading)
                .frame(height: 55)
                .background(.gray.opacity(0.3), in: .rect(cornerRadius: 12))
                .overlay {
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(lineWidth: 2)
                        .foregroundStyle(fieldInFocus == .password ? Color.primary : Color.clear)
                }
                .padding(.horizontal, 12)
            
            Button("Sign up 🚀".capitalized) {
                let emailIsValid = !email.isEmpty
                let passwordIsValid = !password.isEmpty
                
                if emailIsValid && passwordIsValid {
                    print("Sign Up")
                } else if emailIsValid {
//                    emailInFocus = false
//                    passwordInFocus = true
                    fieldInFocus = .password
                } else {
//                    emailInFocus = true
//                    passwordInFocus = false
                    fieldInFocus = .email
                }
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//                self.emailInFocus = true
                fieldInFocus = .email
            }
        }
    }
}

#Preview {
    FocusedStateBootcamp()
        .preferredColorScheme(.dark)
}
