import SwiftUI

public struct UITransparentButton: View {
  private var text: String
  private var action: () -> Void
  @Binding private var enabled: Bool
  
  public init(text: String, enabled: Binding<Bool> = .constant(true), action: @escaping () -> Void) {
    self.text = text
    self.action = action
    _enabled = enabled
  }
  
  public var body: some View {
    ZStack {
      Button {
        action()
      } label: {
        Text(text)
          .frame(maxWidth: .infinity, maxHeight: .infinity)
      }
      .buttonStyle(enabled ? UIBaseButtonType(backgroundColor: SwiftUI.Color(UIColor.clear), textColor: SwiftUI.Color(UIColor.primary500)) : UIBaseButtonType(backgroundColor: SwiftUI.Color(UIColor.clear), textColor: SwiftUI.Color(UIColor.dark300)))
      .disabled(!enabled)
      .overlay(
        RoundedRectangle(cornerRadius: 4)
          .stroke(SwiftUI.Color(UIColor.clear), lineWidth: 1)
      )
    }
    .padding(8)
  }
}

struct UITransparentButton_Previews: PreviewProvider {
  static var previews: some View {
    VStack {
      UITransparentButton(text: "Button", enabled: .constant(true), action: {})
      
      UITransparentButton(text: "Button", enabled: .constant(false), action: {})
    }
  }
}

