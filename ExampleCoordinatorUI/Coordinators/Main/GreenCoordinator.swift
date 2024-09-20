//
//  GreenCoordinator.swift
//  ExampleCoordinatorUI
//
//  Created by Ricardo Bailoni on 18/09/24.
//

import Foundation
import SwiftUI

final class GreenCoordinator: ChildCoordinator {
    var viewRef: (any View)?
    var parent: RootCoordinator?
    var navigationPath: Binding<NavigationPath>
    
    init(navigationPath: Binding<NavigationPath>) {
        self.navigationPath = navigationPath
    }
    
    func coordinatorDidFinish() {
        <#code#>
    }
    
    
    
    func start() -> AnyView {
        <#code#>
    }
    
    
}
