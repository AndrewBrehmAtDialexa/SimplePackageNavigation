import Foundation
import Navigation

class View1ViewModel: ObservableObject {
    var microApp2Router = MicroApp2Router.shared
    
    func goToView2ButtonTapped() {
        microApp2Router.navigate(to: .view2)
    }
}
