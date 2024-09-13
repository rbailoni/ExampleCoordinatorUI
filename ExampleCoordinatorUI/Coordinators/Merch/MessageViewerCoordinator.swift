//
//  MessageViewerCoordinator.swift
//  ExampleCoordinatorUI
//
//  Created by Ricardo Bailoni on 12/09/24.
//

import Foundation
import SwiftUI

final class MessageViewerCoordinator: ChildCoordinator {
    var viewRef: (any View)?
    var parent: ParentCoordinator?
    var navigationPath: Binding<NavigationPath>
    private var text: String?
    
    init(text: String?, navigationPath: Binding<NavigationPath>) {
        self.navigationPath = navigationPath
        self.text = text
    }
    
    func start(animated: Bool) -> AnyView {
        var textViewerView = TextViewerView(coordinator: self, text: text ?? "")
        textViewerView.text = self.text
        return AnyView(textViewerView)
    }
    
    func coordinatorDidFinish() {
        if let parent = parent as? MerchCoordinator {
            parent.childDidFinish(self)
        }
    }
}
