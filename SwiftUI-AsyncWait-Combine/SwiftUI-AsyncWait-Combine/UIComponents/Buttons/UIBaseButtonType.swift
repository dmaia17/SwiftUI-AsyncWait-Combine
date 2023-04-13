import SwiftUI

public struct UIBaseButtonType: ButtonStyle {
  private var backgroundColor: Color
  private var textColor: Color
  
  init(backgroundColor: Color, textColor: Color) {
    self.backgroundColor = backgroundColor
    self.textColor = textColor
  }
  
  public func makeBody(configuration: Configuration) -> some View {
    configuration.label
      .background(backgroundColor)
      .foregroundColor(textColor)
      .scaleEffect(configuration.isPressed ? 1.2 : 1)
      .animation(.easeOut(duration: 0.1), value: configuration.isPressed)
      .frame(height: 36)
      .font(SwiftUI.Font(UIFont.body2))
      .cornerRadius(4)
  }
}
