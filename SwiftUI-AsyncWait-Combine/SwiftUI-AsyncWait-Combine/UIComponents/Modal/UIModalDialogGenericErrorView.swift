import SwiftUI

public struct UIModalDialogGenericErrorView: View {
  private var type: UIModalDialogGenericErrorViewType
  private var successCallback: (() -> Void)?
  
  public init(type: UIModalDialogGenericErrorViewType, successCallback: (() -> Void)? = nil) {
    self.type = type
    self.successCallback = successCallback
  }
  
  public var body: some View {
    UIModalDialogView(iconImage: "ic_alert",
                      iconImageColor: SwiftUI.Color(UIColor.feedbackSystemAlert),
                      titleText: type.title,
                      descriptionText: type.description,
                      buttonSuccessText: "Fechar",
                      successCallback: { (successCallback ?? {})() })
  }
}

struct UIModalDialogGenericErrorView_Previews: PreviewProvider {
  static var previews: some View {
    UIModalDialogGenericErrorView(type: .generic)
    UIModalDialogGenericErrorView(type: .connection)
  }
}

public enum UIModalDialogGenericErrorViewType {
  case generic
  case connection
  
  var title: String {
    switch self {
    case .generic:
      return "Ocorreu um erro"
    case .connection:
      return "Atenção!"
    }
  }
  
  var description: String {
    switch self {
    case .generic:
      return "Não foi possível carregar as informações. Para continuar, tente novamente."
    case .connection:
      return "Sem conexão com a internet."
    }
  }
}
