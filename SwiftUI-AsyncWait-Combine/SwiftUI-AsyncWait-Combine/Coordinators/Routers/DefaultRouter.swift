//
//  DefaultRouter.swift
//  BaseProject
//
//  Created by Daniel Maia dos Passos on 13/04/23.
//

import Foundation
import SwiftUI
import UIKit

enum DefaultRouter: NavigationRouter {
  case home
  case someViewController(navigationController: UIViewNavigationController)
  
  var transition: Transition {
    switch self {
    case .home:
      return .root
      
    case .someViewController:
      return .push
    }
  }
  
  @ViewBuilder
  public func view() -> some View {
    switch self {
    case .home:
      EmptyView() //UIHomeView(viewModel: UIHomeViewModel())
    default:
      EmptyView()
    }
  }
  
  public func viewController() -> UIViewController? {
    switch self {
    case .someViewController(let navigation):
      //TODO: Call view controller
      return nil
    default:
      return nil
    }
  }
}
