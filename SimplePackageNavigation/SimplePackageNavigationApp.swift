import AlertManager
import SwiftUI
import TabMicro

@main
struct SimplePackageNavigationApp: App {
    @ObservedObject var alertManager = AlertManager.shared

    var body: some Scene {
        WindowGroup {
            ZStack {
                BottomTabView()
                if let defaultAlert = alertManager.defaultAlert {
                    CustomAlert(title: defaultAlert.title, message: defaultAlert.message, buttons: defaultAlert.buttons ?? [])
                }
            }
        }
    }
}
