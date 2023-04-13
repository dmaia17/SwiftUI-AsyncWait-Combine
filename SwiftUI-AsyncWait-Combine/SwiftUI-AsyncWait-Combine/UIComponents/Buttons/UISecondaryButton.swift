import SwiftUI

public struct UISecondaryButton: View {
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
      .buttonStyle(enabled ? UIBaseButtonType(backgroundColor: SwiftUI.Color(UIColor.primary100), textColor: SwiftUI.Color(UIColor.primary500)) : UIBaseButtonType(backgroundColor: SwiftUI.Color(UIColor.dark200), textColor: SwiftUI.Color(UIColor.dark300)))
      .disabled(!enabled)
      .overlay(
        RoundedRectangle(cornerRadius: 4)
          .stroke(enabled ? SwiftUI.Color(UIColor.primary100) : SwiftUI.Color(UIColor.dark300), lineWidth: 1)
      )
    }
    .padding(8)
  }
}

struct UISecondaryButton_Previews: PreviewProvider {
  static var previews: some View {
    VStack {
      UISecondaryButton(text: "Button", enabled: .constant(true), action: {})
      
      UISecondaryButton(text: "Button", enabled: .constant(false), action: {})
    }
  }
}
