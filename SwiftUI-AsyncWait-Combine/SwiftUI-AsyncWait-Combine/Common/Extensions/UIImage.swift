//
//  UIImage.swift
//  BaseProject
//
//  Created by Daniel Maia dos Passos on 13/04/23.
//

import Foundation
import UIKit

extension UIImage {
  
  ///Retrieves an assets image
  public static func getImage(name: String) -> UIImage {
    guard let image = UIImage(named: name, in: Bundle.init(for: UIImage.self), compatibleWith: nil) else {
      NSLog("Couldn't retrieve image \(name)")
      return UIImage()
    }
    
    return image
  }
  
  /// Retrieves an assets icon. This method allows you to return the default icon if the search fails. The default value is false.
  internal static func getIconWithDefault(name: String) -> UIImage {
    let icon = UIImage.getImage(name: name)
    
    if icon == UIImage() {
      return UIImage.getImage(name: "ic_default")
    }
    
    return icon
  }
  
  /// Retrieves an assets image. This method allows you to return the default image if the search fails. The default value is false.
  internal static func getImageWithDefault(name: String) -> UIImage {
    let image = UIImage.getImage(name: name)
    
    if image == UIImage() {
      return UIImage.getImage(name: "img_empty_standard")
    }
    
    return image
  }
}

