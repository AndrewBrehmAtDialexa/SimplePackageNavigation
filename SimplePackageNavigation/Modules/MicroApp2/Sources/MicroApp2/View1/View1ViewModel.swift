import AlertManager
import Foundation
import Navigation

class View1ViewModel: ObservableObject {
    var microApp2Router = MicroApp2Router.shared
    var alertManager = AlertManager.shared
    var totalTaps = 0

    func goToView2ButtonTapped() {
        microApp2Router.navigate(to: .view2)
    }

    @MainActor
    func showAlert() {
        let yesButton = AlertActionButton(title: "YES!", action: { self.microApp2Router.navigate(to: .view2) })
        let noButton = AlertActionButton(title: "NO", role: .cancel)
        let alertData = DefaultAlert(title: "An Alert!!", message: "Navigate to View 2?", buttons: [yesButton, noButton])

        alertManager.setDefaultAlert(withAlertData: alertData)
    }

    @MainActor
    func showTappingAlert() {
        totalTaps += 1
        let closeButton = AlertActionButton(title: "Close", role: .cancel)

        let alertData = DefaultAlert(title: "Total Taps", message: "This has been shown \(totalTaps) times", buttons: [closeButton])

        alertManager.setDefaultAlert(withAlertData: alertData)
    }
}
