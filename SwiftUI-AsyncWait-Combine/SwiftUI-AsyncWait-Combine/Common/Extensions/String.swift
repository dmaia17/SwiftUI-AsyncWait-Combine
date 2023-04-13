//
//  String.swift
//  BaseProject
//
//  Created by Daniel Maia dos Passos on 13/04/23.
//

import Foundation

extension String {
  var isEmptyString: Bool {
    return self.trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines).isEmpty
  }
  
  var isEmailValid: Bool {
    let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}"
    return NSPredicate(format: "SELF MATCHES %@", emailRegex).evaluate(with: self)
  }
  
  func currencyInputFormattingWithoutSymbol(localeIdentifier: String = "pt_BR") -> String? {
    let defaultValue = NSNumber(value: 0)
    let formatter = NumberFormatter()
    formatter.numberStyle = .currencyAccounting
    formatter.locale = Locale(identifier: localeIdentifier)
    formatter.maximumFractionDigits = 2
    formatter.minimumFractionDigits = 2
    formatter.paddingPosition = .afterPrefix
    formatter.paddingCharacter = " "
    formatter.currencySymbol = ""
    
    if let number = self.toRawNumber(), let formattedNumber = formatter.string(from: number) {
      return formattedNumber
    } else {
      return formatter.string(from: defaultValue)
    }
  }
  
  func toRawNumber(_ divisor: Double = 100) -> NSNumber? {
    do {
      var amountWithPrefix = self
      let regex = try NSRegularExpression(pattern: "[^0-9]", options: .caseInsensitive)
      amountWithPrefix = regex.stringByReplacingMatches(in: amountWithPrefix,
                                                        options: NSRegularExpression.MatchingOptions(rawValue: 0),
                                                        range: NSRange(location: 0, length: count),
                                                        withTemplate: "")
      if let double = Double(amountWithPrefix) {
        let number = NSNumber(value: (double / divisor))
        
        return number
      }
      return nil
    } catch {
      return nil
    }
  }
  
  func removeValueWithCommaToDouble() -> Double {
    var clearValue = self.replacingOccurrences(of: "R$", with: "")
    clearValue = clearValue.replacingOccurrences(of: "U$", with: "")
    clearValue = clearValue.trimmingCharacters(in: .whitespacesAndNewlines)
    
    let formatter = NumberFormatter()
    formatter.numberStyle = .decimal
    formatter.decimalSeparator = ","
    formatter.maximumFractionDigits = 2
    
    if let doubleValue = formatter.number(from: clearValue)?.doubleValue {
      return doubleValue
    }
    
    return 0
  }
}
