import SwiftUI

public extension View {
  func endTextEditing() {
    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
  }
  
  func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
    ModifiedContent(content: self, modifier: CornerRadiusStyle(radius: radius, corners: corners))
  }
  
  func readSize(onChange: @escaping (CGSize) -> Void) -> some View {
    background(
      GeometryReader { geometryProxy in
        Color.clear
          .preference(key: SizePreferenceKey.self, value: geometryProxy.size)
      }
    )
    .onPreferenceChange(SizePreferenceKey.self, perform: onChange)
  }
}

private struct SizePreferenceKey: PreferenceKey {
  static var defaultValue: CGSize = .zero
  static func reduce(value: inout CGSize, nextValue: () -> CGSize) {}
}

struct CornerRadiusStyle: ViewModifier {
  var radius: CGFloat
  var corners: UIRectCorner
  
  struct CornerRadiusShape: Shape {
    var radius = CGFloat.infinity
    var corners = UIRectCorner.allCorners
    
    func path(in rect: CGRect) -> Path {
      let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
      return Path(path.cgPath)
    }
  }
  
  func body(content: Content) -> some View {
    content
      .clipShape(CornerRadiusShape(radius: radius, corners: corners))
  }
}
