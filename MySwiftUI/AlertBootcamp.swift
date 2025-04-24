//
//  AlertBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 24/04/25.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert = false
    @State var alertType: MyAlerts? = nil
    @State var alertTitle: String = ""
    @State var alertMessage: String = ""
    @State var backgroundColor: Color = Color.black
    
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Button("Button 1") {
                    alertType = .error
                    backgroundColor = Color.red
//                    alertTitle = "Error uploading video!"
//                    alertMessage = "The video could not be uploaded. Please try again later."
                    showAlert.toggle()
                }
                
                Button("Button 2") {
                    alertType = .success
//                    alertTitle = "Successfully uploaded video 😎"
//                    alertMessage = "Your video is now public! 🌟"
                    showAlert.toggle()
                }
            }
            .foregroundStyle(Color.white)
            .buttonStyle(.bordered)
            .buttonBorderShape(.capsule)
            .alert(isPresented: $showAlert) {
                getAlert()
            }
        }
    }
    
    func getAlert() -> Alert {
        switch alertType {
        case .error:
            return Alert(title: Text("There was an error!"))
        case .success:
            return Alert(title: Text("This was a success!"), message: nil, dismissButton: .default(Text("OK"), action: {
                backgroundColor = Color.green
            }))
        default:
            return Alert(title: Text("ERROR"))
        }
        
        
//        return Alert(
//            title: Text(alertTitle),
//            message: Text(alertMessage),
//            dismissButton: .default(Text("OK"))
//        )
        
//        return Alert(
//            title: Text("Change background color?"),
//            message: Text("No message..."),
//            primaryButton: .default(Text("Yes"), action: {
//                backgroundColor = (backgroundColor == .yellow) ? .green : .yellow
//            }),
//            secondaryButton: .cancel()
//        )
        
//        return Alert(title: Text("There was an error!"))
    }
}

#Preview {
    AlertBootcamp()
}
