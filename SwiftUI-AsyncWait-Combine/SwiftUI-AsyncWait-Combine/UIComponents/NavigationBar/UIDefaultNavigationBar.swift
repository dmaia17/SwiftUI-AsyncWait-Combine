import SwiftUI

public struct UIDefaultNavigationBar<Content: View>: View {
  private let content: Content

  @Environment(\.presentationMode) private var presentationMode
  @State private var navigationTitle: String = ""
  @State private var navigationSubTitle: String? = nil
  private var leadingButton: BSUINavigationLeadingButton
  private var trailingButton: BSUINavigationTrailingButton
  private var leadingButtonAction: () -> Void
  private var trailingButtonAction: () -> Void
  
  public init(leadingButton: BSUINavigationLeadingButton = .back,
              trailingButton: BSUINavigationTrailingButton = .none,
              leadingButtonAction: @escaping () -> Void = {},
              trailingButtonAction: @escaping () -> Void = {},
              @ViewBuilder content: () -> Content) {
    self.leadingButton = leadingButton
    self.trailingButton = trailingButton
    self.leadingButtonAction = leadingButtonAction
    self.trailingButtonAction = trailingButtonAction
    self.content = content()
  }
  
  public var body: some View {
    NavigationView {
      ZStack {
        VStack(spacing: 0) {
          whiteNavigation
          
          content
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .onPreferenceChange(CustomNavBarTitlePreferenceKey.self, perform: { value in
          self.navigationTitle = value
        })
        .onPreferenceChange(CustomNavBarSubTitlePreferenceKey.self, perform: { value in
          self.navigationSubTitle = value
        })
      }
    }.navigationBarHidden(true)
  }
}

struct UIDefaultNavigationBar_Previews: PreviewProvider {
  static var previews: some View {
    UIDefaultNavigationBar(content: {
      Color.red
        .customNavigationTitle("Leading Button only")
    })

    UIDefaultNavigationBar(
      trailingButton: .home,
      content: {
        Color.blue
          .customNavigationTitle("Both buttons")
          .customNavigationSubTitle("Transferir > Outros bancos")
      }
    )

    UIDefaultNavigationBar(
      leadingButton: .none,
      trailingButton: .home,
      content: {
        Color.yellow
          .customNavigationTitle("Leading Button none")
      }
    )
  }
}

extension UIDefaultNavigationBar {
  private var whiteNavigation: some View {
    VStack {
      HStack {
        switch leadingButton {
        case .back:
          Button(action: {
            presentationMode.wrappedValue.dismiss()
            leadingButtonAction()
          }, label: {
            Image(uiImage: UIImage.getImage(name: "ic_chevron_left"))
              .foregroundColor(SwiftUI.Color(UIColor.dark500))
              .frame(width: 24, height: 24, alignment: .leading)
          })
          
          Spacer()
        case .close:
          Button(action: {
            leadingButtonAction()
          }, label: {
            Image(uiImage: UIImage.getImage(name: "ic_close"))
              .foregroundColor(SwiftUI.Color(UIColor.dark500))
              .frame(width: 24, height: 24, alignment: .leading)
          })
          
          Spacer()
        case .none:
          Spacer().frame(maxWidth: .zero, alignment: .leading)
        }

        VStack {
          if let subTitle = navigationSubTitle {
            Text(subTitle)
              .font(Font(UIFont.caption))
              .foregroundColor(Color(UIColor.dark500))
              .frame(
                maxWidth: .infinity,
                alignment: .leading
              )
          }
          Text(navigationTitle)
            .font(Font(UIFont.subtitle))
            .foregroundColor(Color(UIColor.dark500))
            .frame(
              maxWidth: .infinity,
              alignment: .leading
            )
        }

        Spacer().frame(width: 24, alignment: .trailing)

        switch trailingButton {
        case .none:
          Spacer()
        case .home:
          Button(action: {
            trailingButtonAction()
          }, label: {
            Image(uiImage: UIImage.getImage(name: "ic_home"))
              .foregroundColor(SwiftUI.Color(UIColor.primary500))
              .frame(width: 24, height: 24, alignment: .leading)
          })
        }
      }
      .frame(height: 56)
      .padding(.horizontal, 16)
    }
    .background(SwiftUI.Color(UIColor.white))
  }
}

public enum BSUINavigationLeadingButton {
  case none
  case back
  case close
}

public enum BSUINavigationTrailingButton {
  case none
  case home
}
