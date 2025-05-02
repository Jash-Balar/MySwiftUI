//
//  EnvironmentObjectBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 01/05/25.
//

import SwiftUI

// ObservedObject
// StateObject
// EnvironmentObject

class EnvironmentViewModel: ObservableObject {
    
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        self.dataArray.append("iPhone")
        self.dataArray.append("iPad")
        self.dataArray.append("MacBook Air")
        self.dataArray.append(contentsOf: ["Apple Watch", "iPod Touch"])
    }
}

struct EnvironmentObjectBootcamp: View {
    
    @StateObject private var viewModel: EnvironmentViewModel = .init()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink {
                        DetailView(selectedItem: item)
                    } label: {
                        Text(item)
                    }
                }
            }
            .navigationTitle("Apple Devices")
        }
        .environmentObject(viewModel)
    }
}

struct DetailView: View {
    
    let selectedItem: String
    
    var body: some View {
        ZStack {
            // background
            Color.orange.ignoresSafeArea()
            
            // foreground
            NavigationLink {
                FinalView()
            } label: {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundStyle(Color.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .clipShape(.capsule)
            }
        }
    }
}

struct FinalView: View {
    
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            // background
            LinearGradient(
                colors: [Color.custom, Color.purple],
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
            .ignoresSafeArea()
            
            // foreground
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
                }
                .font(.largeTitle.bold())
                .foregroundStyle(Color.white)
            }
        }
    }
}

#Preview {
    EnvironmentObjectBootcamp()
//    DetailView(selectedItem: "iPhone")
//    FinalView()
//        .preferredColorScheme(.dark)
}
