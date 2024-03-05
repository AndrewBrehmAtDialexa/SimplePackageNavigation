import FeatureView
import Navigation

class CustomCommonView1ViewModel: CommonView1ViewModel {
    var microApp1Router = MicroApp1Router.shared

    override func ctaButtonTapped() {
        microApp1Router.navigate(to: .view3)
    }
}
