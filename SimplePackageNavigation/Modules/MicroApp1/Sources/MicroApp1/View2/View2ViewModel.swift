import Foundation
import Navigation

class View2ViewModel: ObservableObject {
    var microApp1Router = MicroApp1Router.shared

    func goToDefaultCommonView1ButtonTapped() {
        microApp1Router.navigate(to: .defaultCommonView1)
    }

    func goToCustomCommonView1ButtonTapped() {
        microApp1Router.navigate(to: .customCommonView1)
    }
}
