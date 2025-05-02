//
//  OnboardingView.swift
//  MySwiftUI
//
//  Created by Jash Balar on 01/05/25.
//

import SwiftUI

struct OnboardingView: View {
    
    // Onboarding states:
    /*
     0 - Welcome screen
     1 - Add name
     2 - Add age
     3 - Add gender
     */
    
    // MARK: PROPERTIES
    @State var onboardingState: Int = 0
    let transition: AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading))
    
    // onboarding inputs
    @State var name: String = ""
    @State var age: Double = 18
    @State var gender: String = ""
    
    // for the alert
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    // app storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    // MARK: BODY
    var body: some View {
        ZStack {
            // content
            backgroundLayer
            
            ZStack {
                switch onboardingState {
                case 0: welcomeSection.transition(transition)
                case 1: nameSection.transition(transition)
                case 2: ageSection.transition(transition)
                case 3: genderSection.transition(transition)
                default: EmptyView()
                }
            }
            // buttons
            VStack {
                Spacer()
                bottomButton
                    .withoutAnimation()
            }
            .padding()
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text(alertTitle))
        }
    }
}

// MARK: COMPONENTS
extension OnboardingView {
    private var bottomButton: some View {
        Text(onboardingState == 0 ? "Sign up" : onboardingState == 3 ? "Finish" : "Next")
            .font(.headline)
            .foregroundStyle(Color.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(.horizontal)
            .onTapGesture {
                handleNextButtonTap()
            }
    }
    
    private var welcomeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundStyle(Color.white)
            Text("Find your match.")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(Color.white)
                .overlay(alignment: .bottom) {
                    Capsule()
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundStyle(Color.white)
                }
            Text("This is the #1 app for finding your match online! In this tutorial we are practicing using AppStorage and other SwiftUI techniques.")
                .fontWeight(.medium)
                .foregroundStyle(Color.white)
            
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    private var nameSection: some View {
        VStack(spacing: 40) {
            Spacer()
            
            Text("What's your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(Color.white)
            
            TextField("Your name here...", text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    private var ageSection: some View {
        VStack(spacing: 40) {
            Spacer()
            
            Text("What's your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(Color.white)
            
            Text(String(format: "%.0f", age))
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(Color.white)
            
            Slider(value: $age, in: 18...100, step: 1)
                .tint(Color.white)
            
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }

    private var genderSection: some View {
        VStack(spacing: 40) {
            Spacer()
            
            Text("What's your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(Color.white)
            
            Menu {
                Button("Male") { gender = "Male" }
                Button("Female") { gender = "Female" }
                Button("Non-Binary") { gender = "Non-Binary" }
            } label: {
                Text(gender.isEmpty ? "Select a gender" : gender)
                    .font(.headline)
                    .foregroundStyle(gender.isEmpty ? .gray : .purple)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    private var backgroundLayer: some View {
        RadialGradient(
            gradient: Gradient(colors: [
                Color.pink.opacity(0.9),
                Color.orange.opacity(0.8),
                Color.purple.opacity(0.9)
            ]),
            center: .topTrailing,
            startRadius: 100,
            endRadius: UIScreen.main.bounds.height * 1.2
        )
        .ignoresSafeArea()
    }
}

// MARK: FUNCTIONS
extension OnboardingView {
    func handleNextButtonTap() {
        // Check Inputs
        switch onboardingState {
        case 1:
            guard name.count >= 3 else {
                showAlert(title: "Your name must be at least 3 charachters long! 😩")
                return
            }
        case 3:
            guard gender.isEmpty == false else {
                showAlert(title: "Please select a gender before moving forward! 😳")
                return
            }
        default: break
        }
        
        withAnimation(.spring(duration: 0.75)) {
            if onboardingState == 3 {
                signIn()
            } else {
                onboardingState += 1
            }
        }
    }
    
    func showAlert(title: String) {
        alertTitle = title
        showAlert.toggle()
    }
    
    func signIn() {
        currentUserName = name
        currentUserAge = Int(age)
        currentUserGender = gender
        withAnimation(.spring) {
            currentUserSignedIn = true
        }
    }
}

extension View {
    func withoutAnimation() -> some View {
        self.animation(nil, value: UUID())
    }
}

#Preview {
    OnboardingView()
        .background(Color.purple)
}
