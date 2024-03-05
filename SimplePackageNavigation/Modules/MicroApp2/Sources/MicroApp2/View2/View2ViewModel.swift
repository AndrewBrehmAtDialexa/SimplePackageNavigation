import Foundation
import Navigation

class View2ViewModel: ObservableObject {
    var microApp2Router = MicroApp2Router.shared

    func goBackButtonTapped() {
        microApp2Router.navigateBack()
    }
}
