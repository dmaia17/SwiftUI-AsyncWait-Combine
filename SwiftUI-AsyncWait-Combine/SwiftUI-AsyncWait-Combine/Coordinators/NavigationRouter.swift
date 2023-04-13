//
//  NavigationRouter.swift
//  BaseProject
//
//  Created by Daniel Maia dos Passos on 13/04/23.
//

import Foundation
import SwiftUI
import UIKit

public enum Transition {
  case root
  case push
}

public protocol NavigationRouter {
  associatedtype V: View
  var transition: Transition { get }
  
  /// Creates and returns a view of assosiated type
  ///
  @ViewBuilder
  func view() -> V
  
  func viewController() -> UIViewController?
}
