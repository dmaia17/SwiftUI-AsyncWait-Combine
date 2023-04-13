//
//  UIFont.swift
//  BaseProject
//
//  Created by Daniel Maia dos Passos on 13/04/23.
//

import Foundation
import UIKit

public extension UIFont {
  
  private enum Constants {
    static let sizeBig: CGFloat = 48.0
    static let sizeMedium: CGFloat = 32.0
    static let sizeTitle1: CGFloat = 24.0
    static let sizeTitle2: CGFloat = 18.0
    static let sizeSubtitle: CGFloat = 14.0
    static let sizeListItemTitle: CGFloat = 14.0
    static let sizeLabelCategory: CGFloat = 12.0
    static let sizeLabelSubCategory: CGFloat = 10.0
    static let sizeBody1: CGFloat = 14.0
    static let sizeBody2: CGFloat = 12.0
    static let sizeBody3: CGFloat = 15.0
    static let sizeCaption: CGFloat = 10.0
    static let sizeSmall8: CGFloat = 8.0
    
    static let fontFamily: String = "Montserrat"
    static let fontBold: String = "-Bold"
    static let fontSemiBold: String = "-SemiBold"
    static let fontMedium: String = "-Medium"
    static let fontLight: String = "-Light"
  }
  
  //MARK: Bold
  
  /// A UIFont object whose UIFont with Montserrat-Bold and size 48.0.
  class var big: UIFont {
    return UIFont(name: Constants.fontFamily + Constants.fontBold, size: Constants.sizeBig) ?? UIFont.preferredFont(forTextStyle: .headline)
  }
  
  /// A UIFont object whose UIFont with Montserrat-Bold and size 32.0.
  class var medium: UIFont {
    return UIFont(name: Constants.fontFamily + Constants.fontBold, size: Constants.sizeMedium) ?? UIFont.preferredFont(forTextStyle: .headline)
  }
  
  /// A UIFont object whose UIFont with Montserrat-Bold and size 24.0.
  class var title1: UIFont {
    return UIFont(name: Constants.fontFamily + Constants.fontBold, size: Constants.sizeTitle1) ?? UIFont.preferredFont(forTextStyle: .headline)
  }
  
  /// A UIFont object whose UIFont with Montserrat-Bold and size 18.0.
  class var title2: UIFont {
    return UIFont(name: Constants.fontFamily + Constants.fontBold, size: Constants.sizeTitle2) ?? UIFont.preferredFont(forTextStyle: .headline)
  }
  
  /// A UIFont object whose UIFont with Montserrat-Bold and size 14.0.
  class var subtitle: UIFont {
    return UIFont(name: Constants.fontFamily + Constants.fontBold, size: Constants.sizeSubtitle) ?? UIFont.preferredFont(forTextStyle: .headline)
  }
  
  /// A UIFont object whose UIFont with Montserrat-Bold and size 12.0.
  class var labelCategory: UIFont {
    return UIFont(name: Constants.fontFamily + Constants.fontBold, size: Constants.sizeLabelCategory) ?? UIFont.preferredFont(forTextStyle: .headline)
  }
  
  /// A UIFont object whose UIFont with Montserrat-Bold and size 10.0.
  class var tabOver: UIFont {
    return UIFont(name: Constants.fontFamily + Constants.fontBold, size: Constants.sizeLabelSubCategory) ?? UIFont.preferredFont(forTextStyle: .headline)
  }
  
  //MARK: Semi-Bold
  
  /// A UIFont object whose UIFont with Montserrat-SemiBold and size 14.0.
  class var listItemTitle: UIFont {
    return UIFont(name: Constants.fontFamily + Constants.fontSemiBold, size: Constants.sizeListItemTitle) ?? UIFont.preferredFont(forTextStyle: .headline)
  }
  
  /// A UIFont object whose UIFont with Montserrat-SemiBold and size 8.0.
  class var tag: UIFont {
    return UIFont(name: Constants.fontFamily + Constants.fontSemiBold, size: Constants.sizeSmall8) ?? UIFont.preferredFont(forTextStyle: .headline)
  }
  
  //MARK: Medium
  
  /// A UIFont object whose UIFont with Montserrat-Medium and size 14.0.
  class var body1: UIFont {
    return UIFont(name: Constants.fontFamily + Constants.fontMedium, size: Constants.sizeBody1) ?? UIFont.preferredFont(forTextStyle: .headline)
  }
  
  /// A UIFont object whose UIFont with Montserrat-Medium and size 12.0.
  class var body2: UIFont {
    return UIFont(name: Constants.fontFamily + Constants.fontMedium, size: Constants.sizeBody2) ?? UIFont.preferredFont(forTextStyle: .headline)
  }
  
  /// A UIFont object whose UIFont with Montserrat-Medium and size 10.0.
  class var caption: UIFont {
    return UIFont(name: Constants.fontFamily + Constants.fontMedium, size: Constants.sizeCaption) ?? UIFont.preferredFont(forTextStyle: .headline)
  }
  
  //MARK: Light
  
  /// A UIFont object whose UIFont with Montserrat-Light and size 15.0.
  class var light: UIFont {
    return UIFont(name: Constants.fontFamily + Constants.fontLight, size: Constants.sizeBody3) ?? UIFont.preferredFont(forTextStyle: .headline)
  }
}

