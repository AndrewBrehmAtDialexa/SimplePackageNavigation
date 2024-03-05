import FeatureView

class MicroApp1NavigationViewModel {
    // MARK: - View Builders

    func createView2() -> View2 {
        return View2()
    }

    func createCustomCommonView1() -> CommonView1 {
        let customViewModel = CustomCommonView1ViewModel(buttonTitle: "GO TO MicroApp 1 -> View3")

        return CommonView1(viewModel: customViewModel)
    }

    func createDefaultCommonView1() -> CommonView1 {
        return CommonView1()
    }

    func createView3() -> View3 {
        return View3()
    }
}
