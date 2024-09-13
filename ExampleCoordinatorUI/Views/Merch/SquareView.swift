//
//  SquareView.swift
//  ExampleCoordinatorUI
//
//  Created by Ricardo Bailoni on 11/09/24.
//

import SwiftUI

struct SquareView: View, DisposableViewProtocol {
    
    // TODO: Mudar coordinator para SquareCoordinator
    weak var coordinator: Coordinator?
    var productID: String?
    
    var body: some View {
        ZStack {
            Color.init(uiColor: .init(red: 0.36, green: 0.61, blue: 0.71, alpha: 1))
                .ignoresSafeArea()
            Button(action: {
                // TODO: Implementar ação no botão Show Terms
            }, label: {
                Text("Show Terms")
            })
            .foregroundColor(.white)
        }
        .onDisappear(perform: {
            cleanUp()
        })
        .navigationTitle(productID ?? "")
    }
    
    func cleanUp() {
        // TODO: Implementar cleanUp
        print("Clear Square View")
    }
}

#Preview {
    SquareView()
}
