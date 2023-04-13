import Foundation
import SwiftUI

public struct CustomNavBarTitlePreferenceKey: PreferenceKey {
  public static var defaultValue: String = ""
  
  public static func reduce(value: inout String, nextValue: () -> String) {
    value = nextValue()
  }
}

public struct CustomNavBarSubTitlePreferenceKey: PreferenceKey {
  public static var defaultValue: String? = nil

  public static func reduce(value: inout String?, nextValue: () -> String?) {
    value = nextValue()
  }
}

public extension View {
  func customNavigationTitle(_ title: String) -> some View {
    preference(key: CustomNavBarTitlePreferenceKey.self, value: title)
  }

  func customNavigationSubTitle(_ subTitle: String) -> some View {
    preference(key: CustomNavBarSubTitlePreferenceKey.self, value: subTitle)
  }
}
