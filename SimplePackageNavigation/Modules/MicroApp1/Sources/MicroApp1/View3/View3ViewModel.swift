import Foundation
import Navigation

class View3ViewModel: ObservableObject {
    var microApp1Router = MicroApp1Router.shared

    func popToRootButtonTapped() {
        microApp1Router.navigateToRoot()
    }
}
