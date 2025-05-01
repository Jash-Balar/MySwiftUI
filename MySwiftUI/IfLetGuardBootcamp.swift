//
//  IfLetGuardBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 30/04/25.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    
    @State var currentUserID: String? = "a12eh2nasf21d" // nil
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 30) {
                Text("Here I am practicing safe coding.")
            
//                if let displayText = displayText {
//                    Text(displayText)
//                        .font(.title)
//                        .bold()
//                }
                
                if let displayText {
                    Text(displayText)
                        .font(.title)
                        .bold()
                }
                
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("Safe coding")
            .onAppear {
                loadData2()
            }
        }
    }
    
    func loadData() {
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data!\n User id: \(userID)"
                isLoading = false
            }
        } else {
            displayText = "Error, there is no user id!"
        }
    }
    
    
    func loadData2() {
        guard let userID = currentUserID else {
            displayText = "Error, there is no user id!"
            return
        }
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the new data!\n User id: \(userID)"
            isLoading = false
        }
    }
}

#Preview {
    IfLetGuardBootcamp()
}
