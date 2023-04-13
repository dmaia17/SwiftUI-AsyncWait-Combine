//
//  Coordinator.swift
//  BaseProject
//
//  Created by Daniel Maia dos Passos on 13/04/23.
//

import Foundation
import SwiftUI
import UIKit

public class Coordinator<Router: NavigationRouter>: ObservableObject {
  
  public let navigationController: UIViewNavigationController
  public let startingRoute: Router?
  
  public init(navigationController: UIViewNavigationController = .init(), startingRoute: Router? = nil) {
    self.navigationController = navigationController
    self.startingRoute = startingRoute
  }
  
  public func start() {
    guard let route = startingRoute else { return }
    show(route)
  }
  
  public func show(_ route: Router, animated: Bool = true) {
    let view = route.view()
    let viewWithCoordinator = view.environmentObject(self)
    let viewController = UIHostingController(rootView: viewWithCoordinator)
    
    switch route.transition {
    case .push:
      navigationController.pushViewController(viewController, animated: animated)
    case .root:
      navigationController.setViewControllers([viewController], animated: animated)
    }
  }
  
  func showViewController(_ route: Router) {
    //TODO: Go to view controller
  }
  
  public func pop(animated: Bool = true) {
    _ = navigationController.popViewController(animated: animated)
  }
  
  public func popToRoot(animated: Bool = true) {
    _ = navigationController.popToRootViewController(animated: animated)
  }
  
  public func backToStack(count: Int) {
    var aux = 0
    
    for viewController in navigationController.viewControllers {
      if aux == count {
        _ = navigationController.popToViewController(viewController, animated: true)
        break
      } else {
        aux += 1
      }
    }
  }
}
