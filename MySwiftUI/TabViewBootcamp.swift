//
//  TabViewBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 25/04/25.
//

import SwiftUI

struct TabViewBootcamp: View {
    
    @State private var currentTab: TabSelection = .home
    
    enum TabSelection: Int {
        case home
        case explore
        case reel
        case settings
    }
    
    let icons: [String] = [
        "heart.fill", "globe", "house.fill", "person.fill"
    ]
    
    var body: some View {
        TabView {
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding()
            }
        }
        .background(
            RadialGradient(colors: [Color.red , Color.blue], center: .center, startRadius: 5, endRadius: 300)
        )
        .frame(height: 300)
        .tabViewStyle(.page)
//        TabView(selection: $currentTab) {
//            Tab("Home", systemImage: "house", value: .home) {
//                HomeView()
//            }
//            
//            Tab(value: .explore) {
//                Text("Eplore Page")
//            } label: {
//                Image(systemName: "magnifyingglass")
//                Text("Explore")
//            }
//            
//            Tab("Reels", systemImage: "video", value: .reel) {
//                Text("Reels")
//            }
//            
//            Tab("Settings", systemImage: "gear", value: .settings) {
//                Text("Settings")
//            }
//            
//        }
//        .tint(Color.red)
    }
}

//struct TabViewBootcamp: View {
//    
//    @State var selectedTab: Int = 0
//    
//    var body: some View {
//        TabView(selection: $selectedTab) {
//            Tab(value: 0) {
////                HomeView(selectedTab: $selectedTab)
//            } label: {
//                Image(systemName: "house.fill")
//                Text("Home")
//            }
//
//            Tab(value: 1) {
//                Text("BROWSE TAB")
//            } label: {
//                Image(systemName: "globe")
//                Text("Browse")
//            }
//            
//            Tab(value: 2) {
//                Text("PROFILE TAB")
//            } label: {
//                Image(systemName: "person.fill")
//                Text("Profile")
//            }
//        }
//        .tint(.red)
//    }
//}

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.red
                .ignoresSafeArea(edges: [.top])
            
            Text("This is home screen")
                .font(.largeTitle)
                .foregroundStyle(Color.white)
        }
    }
}

#Preview {
    TabViewBootcamp()
}
