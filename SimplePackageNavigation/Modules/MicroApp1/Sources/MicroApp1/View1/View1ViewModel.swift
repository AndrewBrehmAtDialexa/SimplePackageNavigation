import Foundation
import Navigation

class View1ViewModel: ObservableObject {
    var microApp1Router = MicroApp1Router.shared
    
    func goToView2ButtonTapped() {
        microApp1Router.navigate(to: .view2)
    }
}
