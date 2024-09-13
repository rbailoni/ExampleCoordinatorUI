//
//  TextViewerView.swift
//  ExampleCoordinatorUI
//
//  Created by Ricardo Bailoni on 12/09/24.
//

import SwiftUI

struct TextViewerView: View, DisposableViewProtocol {
    weak var coordinator: ChildCoordinator?
    var text: String?
    
    init(coordinator: ChildCoordinator, text: String) {
        self.coordinator = coordinator
        self.coordinator?.viewRef = self
        self.text = text
    }
    
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            Text(text ?? "")
                .fontWeight(.bold)
        }
        .onDisappear(perform: {
            cleanUp()
        })
    }
    
    func cleanUp() {
        coordinator?.coordinatorDidFinish()
    }
}

#Preview {
    var carambola = TextViewerView(coordinator: MessageViewerCoordinator(text: "Carambola", navigationPath: .constant(NavigationPath())), text: "Carambola")
    return carambola
}
