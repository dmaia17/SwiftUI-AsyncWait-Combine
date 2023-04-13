//
//  UIColor.swift
//  BaseProject
//
//  Created by Daniel Maia dos Passos on 13/04/23.
//

import Foundation
import UIKit

private class Colors { }

public extension UIColor {
  
  /// A color object whose hex value is #101010 and whose alpha value is 1.0.
  class var officialApplePlaceholderGray: UIColor {
    return UIColor(named: "officialApplePlaceholderGray", in: Bundle(for: Colors.self), compatibleWith: nil) ?? UIColor.white
  }
  
  /// A color object whose hex value is #101010 and whose alpha value is 1.0.
  class var dark500: UIColor {
    return UIColor(named: "dark500", in: Bundle(for: Colors.self), compatibleWith: nil) ?? UIColor.white
  }
  
  /// A color object whose hex value is #545454 and whose alpha value is 1.0.
  class var dark400: UIColor {
    return UIColor(named: "dark400", in: Bundle(for: Colors.self), compatibleWith: nil) ?? UIColor.white
  }
  
  /// A color object whose hex value is #B2B2B2 and whose alpha value is 1.0.
  class var dark300: UIColor {
    return UIColor(named: "dark300", in: Bundle(for: Colors.self), compatibleWith: nil) ?? UIColor.white
  }
  
  /// A color object whose hex value is #E6E6E6 and whose alpha value is 1.0.
  class var dark200: UIColor {
    return UIColor(named: "dark200", in: Bundle(for: Colors.self), compatibleWith: nil) ?? UIColor.white
  }
  
  /// A color object whose hex value is #F8F8F8 and whose alpha value is 1.0.
  class var dark100: UIColor {
    return UIColor(named: "dark100", in: Bundle(for: Colors.self), compatibleWith: nil) ?? UIColor.white
  }
  
  /// A color object whose hex value is #FFFFFF and whose alpha value is 1.0.
  class var light: UIColor {
    return UIColor(named: "light", in: Bundle(for: Colors.self), compatibleWith: nil) ?? UIColor.white
  }
  
  /// A color object whose hex value is #32D5A0 and whose alpha value is 1.0.
  class var feedbackSystemSuccess: UIColor {
    return UIColor(named: "feedbackSuccess", in: Bundle(for: Colors.self), compatibleWith: nil) ?? UIColor.white
  }
  
  /// A color object whose hex value is #FFB100 and whose alpha value is 1.0.
  class var feedbackSystemAttention: UIColor {
    return UIColor(named: "feedbackAttention", in: Bundle(for: Colors.self), compatibleWith: nil) ?? UIColor.white
  }
  
  /// A color object whose hex value is #EE3B30 and whose alpha value is 1.0.
  class var feedbackSystemAlert: UIColor {
    return UIColor(named: "feedbackAlert", in: Bundle(for: Colors.self), compatibleWith: nil) ?? UIColor.white
  }
  
  /// A color object whose hex value is #3333CC and whose alpha value is 1.0.
  class var primary500: UIColor {
    return UIColor(named: "primary500", in: Bundle(for: Colors.self), compatibleWith: nil) ?? UIColor.white
  }
  
  /// A color object whose hex value is #A2B2FF and whose alpha value is 1.0.
  class var primary300: UIColor {
    return UIColor(named: "primary300", in: Bundle(for: Colors.self), compatibleWith: nil) ?? UIColor.white
  }
  
  /// A color object whose hex value is #E6EAFF and whose alpha value is 1.0.
  class var primary100: UIColor {
    return UIColor(named: "primary100", in: Bundle(for: Colors.self), compatibleWith: nil) ?? UIColor.white
  }
  
  /// A color object whose hex value is #00B771 and whose alpha value is 1.0.
  class var secondary500: UIColor {
    return UIColor(named: "secondary500", in: Bundle(for: Colors.self), compatibleWith: nil) ?? UIColor.white
  }
  
  /// A color object whose hex value is #7FDBB8 and whose alpha value is 1.0.
  class var secondary300: UIColor {
    return UIColor(named: "secondary300", in: Bundle(for: Colors.self), compatibleWith: nil) ?? UIColor.white
  }
  
  /// A color object whose hex value is #EBFAF4 and whose alpha value is 1.0.
  class var secondary100: UIColor {
    return UIColor(named: "secondary100", in: Bundle(for: Colors.self), compatibleWith: nil) ?? UIColor.white
  }
  
  /// A color object whose hex value is #9363FF and whose alpha value is 1.0.
  class var tertiary500: UIColor {
    return UIColor(named: "tertiary500", in: Bundle(for: Colors.self), compatibleWith: nil) ?? UIColor.white
  }
  
  /// A color object whose hex value is #C9B1FF and whose alpha value is 1.0.
  class var tertiary300: UIColor {
    return UIColor(named: "tertiary300", in: Bundle(for: Colors.self), compatibleWith: nil) ?? UIColor.white
  }
  
  /// A color object whose hex value is #F4EFFF and whose alpha value is 1.0.
  class var tertiary100: UIColor {
    return UIColor(named: "tertiary100", in: Bundle(for: Colors.self), compatibleWith: nil) ?? UIColor.white
  }
  
  /// A color object whose hex value is #3333CC and whose alpha value is 1.0.
  class var gradientPrimaryStart: UIColor {
    return UIColor(named: "gradientPrimaryStart", in: Bundle(for: Colors.self), compatibleWith: nil) ?? UIColor.white
  }
  
  /// A color object whose hex value is  #212180 and whose alpha value is 1.0.
  class var gradientPrimaryEnd: UIColor {
    return UIColor(named: "gradientPrimaryEnd", in: Bundle(for: Colors.self), compatibleWith: nil) ?? UIColor.white
  }
  
  /// A color object whose hex value is #00B771 and whose alpha value is 1.0.
  class var gradientSecondaryStart: UIColor {
    return UIColor(named: "gradientSecondaryStart", in: Bundle(for: Colors.self), compatibleWith: nil) ?? UIColor.white
  }
  
  /// A color object whose hex value is #32D5A0 and whose alpha value is 1.0.
  class var gradientSecondaryEnd: UIColor {
    return UIColor(named: "gradientSecondaryEnd", in: Bundle(for: Colors.self), compatibleWith: nil) ?? UIColor.white
  }
  
  /// A color object whose hex value is #9363FF and whose alpha value is 1.0.
  class var gradientTertiaryStart: UIColor {
    return UIColor(named: "gradientTertiaryStart", in: Bundle(for: Colors.self), compatibleWith: nil) ?? UIColor.white
  }
  
  /// A color object whose hex value is #3333CC and whose alpha value is 1.0.
  class var gradientTertiaryEnd: UIColor {
    return UIColor(named: "gradientTertiaryEnd", in: Bundle(for: Colors.self), compatibleWith: nil) ?? UIColor.white
  }
  
  /// A color object whose hex value is #FFFFFF between and whose alpha value is 1.0.
  class var gradientLoadingLightStart: UIColor {
    return UIColor(named: "gradientLoadingLightStart", in: Bundle(for: Colors.self), compatibleWith: nil) ?? UIColor.white
  }
  
  /// A color object whose hex value is #FFFFFF between and whose alpha value is 0.15.
  class var gradientLoadingLightMiddle: UIColor {
    return UIColor(named: "gradientLoadingLightMiddle", in: Bundle(for: Colors.self), compatibleWith: nil) ?? UIColor.white
  }
  
  /// A color object whose hex value is #FFFFFF between and whose alpha value is 0.0.
  class var gradientLoadingLightEnd: UIColor {
    return UIColor(named: "gradientLoadingLightEnd", in: Bundle(for: Colors.self), compatibleWith: nil) ?? UIColor.white
  }
  
  /// A color object whose hex value is #3333CC between and whose alpha value is 1.0.
  class var gradientLoadingPrimaryStart: UIColor {
    return UIColor(named: "gradientLoadingPrimaryStart", in: Bundle(for: Colors.self), compatibleWith: nil) ?? UIColor.white
  }
  
  /// A color object whose hex value is #3333CC between and whose alpha value is 0.15.
  class var gradientLoadingPrimaryMiddle: UIColor {
    return UIColor(named: "gradientLoadingPrimaryMiddle", in: Bundle(for: Colors.self), compatibleWith: nil) ?? UIColor.white
  }
  
  /// A color object whose hex value is #3333CC between and whose alpha value is 0.0.
  class var gradientLoadingPrimaryEnd: UIColor {
    return UIColor(named: "gradientLoadingPrimaryEnd", in: Bundle(for: Colors.self), compatibleWith: nil) ?? UIColor.white
  }
  
  /// A color object whose hex value is #212180 and whose alpha value is 1.0.
  internal class var complementaryBackgroundDarkBluish: UIColor {
    return UIColor(named: "complementaryBackgroundDarkBluish", in: Bundle(for: Colors.self), compatibleWith: nil) ?? UIColor.white
  }
  
  /// A color object whose hex value is #2B204F and whose alpha value is 1.0.
  class var complementaryBackgroundGloom: UIColor {
    return UIColor(named: "complementaryBackgroundGloom", in: Bundle(for: Colors.self), compatibleWith: nil) ?? UIColor.white
  }
  
  /// A color object whose hex value is #101010 and whose alpha value is 0.4.
  class var complementaryOverlay: UIColor {
    return UIColor(named: "complementaryOverlay", in: Bundle(for: Colors.self), compatibleWith: nil) ?? UIColor.white
  }
  
  /// A color object whose hex value is #32D5A0 and whose alpha value is 1.0.
  class var complementaryDTVMFixedIncome: UIColor {
    return UIColor(named: "complementaryDTVMFixedIncome", in: Bundle(for: Colors.self), compatibleWith: nil) ?? UIColor.white
  }
  
  /// A color object whose hex value is #FFB100 and whose alpha value is 1.0.
  class var complementaryDTVMVariableIncome: UIColor {
    return UIColor(named: "complementaryDTVMVariableIncome", in: Bundle(for: Colors.self), compatibleWith: nil) ?? UIColor.white
  }
  
  /// A color object whose hex value is #9363FF and whose alpha value is 1.0.
  class var complementaryDTVMAnotherClasses: UIColor {
    return UIColor(named: "complementaryDTVMAnotherClasses", in: Bundle(for: Colors.self), compatibleWith: nil) ?? UIColor.white
  }
  
  /// A color object whose hex value is #9363FF and whose alpha value is 1.0.
  class var whiteHot2: UIColor {
    return UIColor(named: "whiteHot2", in: Bundle(for: Colors.self), compatibleWith: nil) ?? UIColor.white
  }
  
  /// Return BSColor by string name
  class func stringColor(name: String) -> UIColor {
    return UIColor(named: name, in: Bundle(for: Colors.self), compatibleWith: nil) ?? UIColor.white
  }
  
  class func makeGradient(_ colors: [UIColor], frame: CGRect) -> CAGradientLayer {
    let gradientLayer = CAGradientLayer()
    var cgColors = [CGColor]()
    
    for color in colors {
      cgColors.append(color.cgColor)
    }
    
    gradientLayer.colors = cgColors
    gradientLayer.locations = [0.0, 1.0]
    gradientLayer.frame = frame
    
    gradientLayer.startPoint = CGPoint(x: 0.5, y: 0.0)
    gradientLayer.endPoint = CGPoint(x: 0.5, y: 1.0)
    
    return gradientLayer
  }
}
