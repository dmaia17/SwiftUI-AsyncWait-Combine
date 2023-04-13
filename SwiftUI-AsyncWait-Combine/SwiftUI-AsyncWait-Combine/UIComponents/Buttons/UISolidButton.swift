import SwiftUI

public struct UISolidButton: View {
  private var text: String
  @Binding private var enabled: Bool
  private var action: () -> Void
  
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
      .buttonStyle(enabled ? UIBaseButtonType(backgroundColor: SwiftUI.Color(UIColor.primary500), textColor: SwiftUI.Color(UIColor.white)) : UIBaseButtonType(backgroundColor: SwiftUI.Color(UIColor.dark200), textColor: SwiftUI.Color(UIColor.dark300)))
      .disabled(!enabled)
      .overlay(
        RoundedRectangle(cornerRadius: 4)
          .stroke(enabled ? SwiftUI.Color(UIColor.primary500) : SwiftUI.Color(UIColor.dark300), lineWidth: 1)
      )
    }
    .padding(8)
  }
}

struct UISolidButton_Previews: PreviewProvider {
  static var previews: some View {
    VStack {
      UISolidButton(text: "Button", enabled: .constant(true), action: {})
        
      UISolidButton(text: "Button", enabled: .constant(false), action: {})
    }
  }
}
