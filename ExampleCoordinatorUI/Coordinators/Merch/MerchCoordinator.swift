//
//  MerchCoordinator.swift
//  ExampleCoordinatorUI
//
//  Created by Ricardo Bailoni on 12/09/24.
//

import Foundation
import SwiftUI

final class MerchCoordinator: ParentCoordinator {
    // TODO: Mudar para RootCoordinator quando existir
    var parent: Coordinator?
    
    var childCoordinators = [Coordinator]()
    var navigationPath: Binding<NavigationPath>
    
    init(navigationPath: Binding<NavigationPath>) {
        self.navigationPath = navigationPath
    }
    
    func start() -> AnyView {
        /// Merch Coordinator Initialization
        return AnyView(EmptyView())
    }
    
    func dismissMerchScreens() {
        let lastCoordinator = childCoordinators.popLast()
        for item in childCoordinators.reversed() {
            if item is ChildCoordinator {
                let childCoordinator = item as! ChildCoordinator
                if let viewRef = childCoordinator.viewRef as? DisposableViewProtocol {
                    viewRef.cleanUp()
                }
                // TODO: Colocar aqui lógica para remover view da pilha de navigationPath
//                childCoordinator.viewRef?
            }
            // TODO: Remove coordinator da pilha
//            lastCoordinator.popViewController(animated: true, useCustomAnimation: false)
            // TODO: Manda para a root no navigationPath
//            navigationController.customPopToRootViewController()
        }
    }
}
