//
//  UIViewNavigationController.swift
//  BaseProject
//
//  Created by Daniel Maia dos Passos on 13/04/23.
//

import Foundation
import UIKit

public class UIViewNavigationController: UINavigationController {
  override public func pushViewController(_ viewController: UIViewController, animated: Bool) {
    super.pushViewController(viewController, animated: animated)
  }
  
  override public func popViewController(animated: Bool) -> UIViewController? {
    let destinationVC = viewControllers.dropLast().last
    let poped = super.popViewController(animated: animated)
    
    return poped
  }
  
  override public func popToRootViewController(animated: Bool) -> [UIViewController]? {
    let poped = super.popToRootViewController(animated: animated)
    return poped
  }
}
