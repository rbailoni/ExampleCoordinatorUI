//
//  SquareCoordinator.swift
//  ExampleCoordinatorUI
//
//  Created by Ricardo Bailoni on 12/09/24.
//

import Foundation
import SwiftUI

final class SquareCoordinator: ChildCoordinator {
    var viewRef: (any View)?
    var parent: MerchCoordinator?
    var navigationPath: Binding<NavigationPath>
    private var productID: String?
    
    init(productID: String?, navigationPah: Binding<NavigationPath>) {
        self.navigationPath = navigationPah
        self.productID = productID
    }
    
    func start() -> AnyView {
        var squareView = SquareView()
        squareView.productID = self.productID
        squareView.coordinator = self
        return AnyView(squareView)
    }
    
    func coordinatorDidFinish() {
        parent?.childDidFinish(self)
    }
    
    func terms(text: String?) {
        // TODO: Implementar quando tiver o parent correto
    }
    
    func dismissAuthScreen() {
        parent?.dismissMerchScreens()
        // Entender por que tem um dismiss da Auth em todos os coordinators
    }
}
