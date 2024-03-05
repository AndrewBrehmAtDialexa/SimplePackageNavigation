import Foundation

open class CommonView1ViewModel: ObservableObject {
    @Published var buttonTitle: String
    var isDefault = true

    public init(buttonTitle: String = "Tap Me!") {
        self.buttonTitle = buttonTitle

        isDefault = buttonTitle == "Tap Me!"
    }

    open func ctaButtonTapped() {
        buttonTitle = "I was Tapped!"
    }
}
