//
//  RootCoordinator.swift
//  ExampleCoordinatorUI
//
//  Created by Ricardo Bailoni on 18/09/24.
//

import Foundation
import SwiftUI

final class RootCoordinator: Coordinator, ParentCoordinator {
    init(navigationPath: Binding<NavigationPath>) {
        self.navigationPath = navigationPath
    }
    
    var navigationPath: Binding<NavigationPath>
    
    func start() -> AnyView {
        AnyView(Text("Que comecem os jogos"))
    }
    
    var childCoordinators = [Coordinator]()
}
