//
//  DocumentationBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 30/04/25.
//

import SwiftUI

struct DocumentationBootcamp: View {
    
    // MARK: PROPERTIES
    @State private var fruits: [String] = ["Apple", "Banana", "Orange"]
    @State private var showAlert: Bool = false
    
    // MARK: BODY
    var body: some View {
        NavigationStack {
            ZStack {
                // background
                Color.green.ignoresSafeArea()
                
                // foreground
                foregroundLayer
                    .navigationTitle("Documentation")
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            Button("Alert") {
                                showAlert.toggle()
                            }
                        }
                    }
                    .alert(isPresented: $showAlert) {
                        getAlert(text: "This is alert")
                    }
            }
        }
    }
    
    /// This is the foreground layer that holds a scrollview
    private var foregroundLayer: some View {
        ScrollView {
            Text("Hello")
            ForEach(fruits, id: \.self) { fruit in
                Text(fruit)
                    .font(.headline)
            }
        }
    }
    
    // MARK: FUNCTIONS
    
    /// Gets an alert with a specified title.
    ///
    /// This function creates and return an alert immediately. The alert will have a title based on the text parameter but it will NOT have a message.
    /// 
    /// ```
    /// getAlert(text: "Hi) -> Alert(title: Text("Hi))
    /// ```
    ///
    /// - Warning: There is no additional message in this alert.
    /// - Parameter text: This is the title for the alert.
    /// - Returns: Returns an alert with a title.
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

#Preview {
    DocumentationBootcamp()
}
