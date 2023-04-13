import SwiftUI

public enum UIModalDialogViewSecondButtonType {
  case transparent
  case borded
}

public struct UIModalDialogView: View {
  var iconImage: String = ""
  var iconImageColor: Color = SwiftUI.Color(UIColor.primary500)
  var titleText: String = ""
  var descriptionText: String = ""
  var secondButtonStyle: UIModalDialogViewSecondButtonType = .borded
  var buttonSuccessText: String?
  var buttonCancelText: String?
  var successCallback: (() -> Void)?
  var cancelCallback: (() -> Void)?
  
  public init(iconImage: String,
              iconImageColor: Color = SwiftUI.Color(UIColor.primary500),
              titleText: String,
              descriptionText: String,
              secondButtonStyle: UIModalDialogViewSecondButtonType = .borded,
              buttonSuccessText: String? = nil,
              buttonCancelText: String? = nil,
              successCallback: (() -> Void)? = nil,
              cancelCallback: (() -> Void)? = nil) {
    self.iconImage = iconImage
    self.iconImageColor = iconImageColor
    self.titleText = titleText
    self.descriptionText = descriptionText
    self.secondButtonStyle = secondButtonStyle
    self.buttonSuccessText = buttonSuccessText
    self.buttonCancelText = buttonCancelText
    self.successCallback = successCallback
    self.cancelCallback = cancelCallback
  }
  
  public var body: some View {
    ZStack {
      ZStack {
        RoundedRectangle(cornerRadius: 16)
                  .foregroundColor(SwiftUI.Color(UIColor.white))
                  .shadow(color: SwiftUI.Color(UIColor.black).opacity(0.2), radius: 0.1, x: 0, y: 0.1)
        
        VStack {
          SwiftUI.Image(uiImage: UIImage.getImage(name: iconImage))
            .resizable()
            .scaledToFit()
            .frame(width: 48, height: 48)
            .padding(.top, 24)
            .foregroundColor(iconImageColor)
          
          Text(titleText)
            .font(SwiftUI.Font(UIFont.title2))
            .foregroundColor(SwiftUI.Color(UIColor.dark500))
            .padding(.top, 16)
            .multilineTextAlignment(.center)
          
          Text(descriptionText)
            .font(SwiftUI.Font(UIFont.body1))
            .foregroundColor(SwiftUI.Color(UIColor.dark500))
            .padding(.top, 16)
            .multilineTextAlignment(.center)
          
          if buttonSuccessText != nil && successCallback != nil {
            configureSuccessButton
          }
          
          if buttonCancelText != nil && cancelCallback != nil {
            configureCancelButton
          }
        }
        .padding(.horizontal, 16)
        .padding(.bottom, 24)
      }
      .frame(width: UIScreen.main.bounds.width - 48)
      .fixedSize(horizontal: false, vertical: true)
    }
    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
    .background(SwiftUI.Color(UIColor.dark500).opacity(0.5))
    	
  }
}

extension UIModalDialogView {
  var configureSuccessButton: some View {
    UISolidButton(text: buttonSuccessText!,
                      action: {
                        withAnimation {
                          successCallback!()
                        }}
    )
    .padding(.horizontal, 24)
    .padding(.top, 24)
  }
  
  var configureCancelButton: some View {
    ZStack {
      switch secondButtonStyle {
      case .transparent:
        UITransparentButton(text: buttonCancelText!,
                            action: {
          withAnimation {
            cancelCallback!()
          }}
        )
        .padding(.horizontal, 24)
        .padding(.bottom, 24)
        .padding(.top, 8)
      default:
        UIOutlineButton(text: buttonCancelText!,
                        action: {
          withAnimation {
            cancelCallback!()
          }}
        )
        .padding(.horizontal, 24)
        .padding(.top, 8)
      }
    }
  }
}

struct UIModalDialogView_Previews: PreviewProvider {
  static var previews: some View {
    VStack(spacing: 24) {
      UIModalDialogView(iconImage: "ic_alert",
                        titleText: "Atenção!",
                        descriptionText: "Você sairá do app e abrirá o site do nosso parceiro para acompanhar a entrega do seu cartão. \n\n Deseja realmente sair do app?",
                        buttonSuccessText: "Sim, continuar",
                        buttonCancelText: "Fechar",
                        successCallback: { print("successCallback") },
                        cancelCallback: { print("cancelCallback") }
      )
      
      UIModalDialogView(iconImage: "ic_alert",
                        titleText: "Atenção!",
                        descriptionText: "Você sairá do app e abrirá o site do nosso parceiro para acompanhar a entrega do seu cartão. \n\n Deseja realmente sair do app?",
                        buttonSuccessText: "Sim, continuar",
                        successCallback: { print("successCallback") }
      )
    }
    .background(SwiftUI.Color(UIColor.red))
  }
}
