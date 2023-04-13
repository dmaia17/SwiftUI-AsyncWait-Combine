import SwiftUI

public struct UIOutlineButton: View {
  var text: String
  var action: () -> Void
  
  public init(text: String, action: @escaping () -> Void) {
    self.text = text
    self.action = action
  }
  
  public var body: some View {
    ZStack {
      Button {
        action()
      } label: {
        Text(text)
          .frame(maxWidth: .infinity, maxHeight: .infinity)
      }
      .buttonStyle(UIBaseButtonType(backgroundColor: SwiftUI.Color(UIColor.clear), textColor: SwiftUI.Color(UIColor.primary500)))
      .overlay(
        RoundedRectangle(cornerRadius: 4)
          .stroke(SwiftUI.Color(UIColor.primary500), lineWidth: 1)
      )
    }
    .padding(8)
  }
}

struct UIOutlineButton_Previews: PreviewProvider {
  static var previews: some View {
    UIOutlineButton(text: "Button", action: { print("pressed")})
  }
}
