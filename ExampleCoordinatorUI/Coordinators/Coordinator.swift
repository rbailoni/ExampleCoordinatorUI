//
//  Coordinator.swift
//  ExampleCoordinatorUI
//
//  Created by Ricardo Bailoni on 11/09/24.
//

import Foundation
import SwiftUI

protocol Coordinator: AnyObject {
    var navigationPath: Binding<NavigationPath> { get set }
    func start() -> AnyView
}

protocol ParentCoordinator: Coordinator {
    var childCoordinators: [Coordinator] { get set }
    func addChild(_ child: Coordinator?)
    func childDidFinish(_ child: Coordinator?)
}

extension ParentCoordinator {
    func addChild(_ child: Coordinator?) {
        if let child {
            childCoordinators.append(child)
        }
    }
    
    func childDidFinish(_ child: Coordinator?) {
        for (index, coordinator) in childCoordinators.enumerated() {
            if coordinator === child {
                childCoordinators.remove(at: index)
                break
            }
        }
    }
}

protocol ChildCoordinator: Coordinator {
    func coordinatorDidFinish()
    var viewRef: (any View)? { get set }
}
