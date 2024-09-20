//
//  ContentView.swift
//  ExampleCoordinatorUI
//
//  Created by Ricardo Bailoni on 11/09/24.
//

import SwiftUI

struct ContentView: View {
    @State private var navigationPath: NavigationPath = .init()
    var body: some View {
        NavigationStack(path: $navigationPath) {
            let coordinator = RootCoordinator(navigationPath: $navigationPath)
            coordinator.start()
        }
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
//        }
//        .padding()
    }
}

#Preview {
    ContentView()
}
