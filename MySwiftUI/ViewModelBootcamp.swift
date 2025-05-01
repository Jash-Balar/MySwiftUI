//
//  ViewModelBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 30/04/25.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject{

    // Just for now, @Published is the same as @State except it is in the class.
    @Published var fruits: [FruitModel] = []
    @Published var isLoading: Bool = false

    init() {
        getFruits()
    }

    func getFruits() {
        let fruit1 = FruitModel(name: "Watermelon", count: 2)
        let fruit2 = FruitModel(name: "Orange", count: 10)
        let fruit3 = FruitModel(name: "Banana", count: 24)

        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.fruits.append(fruit1)
            self.fruits.append(fruit2)
            self.fruits.append(fruit3)
            self.isLoading = false
        }
    }

    func deleteFruit(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
}

struct ViewModelBootcamp: View {
    // Downside of ObservableOject: it gets recreated everytime the view changes(reloads) for example during animation. So to avoid this, we use @StateObject which is the same as @ObservableObject except basically if this view reloads/re-renders, the @StateObject will persist i.e not refresh. Helpful when the view model is holding all of our data because underlying data is not really changing when the view needs to be updated.

    // @StateObject  -> USE THIS ON CREATION / INIT
    // @ObservedObject -> USE THIS FOR SUBVIEWS
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()

    var body: some View {
        NavigationStack {
            ZStack {
                if fruitViewModel.isLoading {
                    loaderView
                        .transition(.opacity)
                } else {
                    listView
                        .transition(.opacity)
                }
            }
            .navigationTitle("Fruit List")
            .toolbar {
                ToolbarView
            }
            .animation(.easeInOut, value: fruitViewModel.isLoading)
//            .onAppear {
//                fruitViewModel.addFruits()
//            }
        }
    }
    
    private var loaderView: some View {
        VStack(spacing: 20) {
            Text("Fetching fruits")
                .font(.title3)
                .foregroundStyle(Color.secondary)
                .bold()
            ProgressView()
        }
    }
    
    private var listView: some View {
        List {
            ForEach(fruitViewModel.fruits) { fruit in
                HStack(spacing: 10) {
                    Text("\(fruit.count)")
                        .foregroundStyle(Color.red)
                        .frame(width: 30, alignment: .leading)
                    Text("\(fruit.name)")
                        .font(.headline)
                }
            }
            .onDelete(perform: fruitViewModel.deleteFruit)
        }
        .listStyle(.insetGrouped)
    }
    
    private var ToolbarView: some ToolbarContent {
        ToolbarItem(placement: .topBarTrailing) {
            NavigationLink {
                RandomScreen(fruitViewModel: fruitViewModel)
            } label: {
                Image(systemName: "arrow.right")
                    .font(.title)
                    .tint(Color.black)
            }
        }
    }
}

struct RandomScreen: View {
    
    @Environment(\.dismiss) var dismiss
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            VStack {
                ForEach(fruitViewModel.fruits) { fruit in
                    Text(fruit.name)
                        .foregroundStyle(Color.white)
                        .font(.headline)
                }
            }
        }
    }
}

#Preview {
    ViewModelBootcamp()
    //    RandomScreen()
}
