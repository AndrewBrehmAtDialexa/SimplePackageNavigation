import SwiftUI

public struct MicroApp1NavigationView: View {
    var viewModel = MicroApp1NavigationViewModel()
    @ObservedObject var navPathWrapper = MicroApp1Router.shared.navPathWrapper

    public init() {}

    public var body: some View {
        NavigationStack(path: $navPathWrapper.navPath) {
            View1()
                .navigationDestination(for: MicroApp1Router.Destination.self) { destination in
                    switch destination {
                    case .view2:
                        viewModel.createView2()
                    case .defaultCommonView1:
                        viewModel.createDefaultCommonView1()
                    case .customCommonView1:
                        viewModel.createCustomCommonView1()
                    case .view3:
                        viewModel.createView3()
                    }
                }
        }
    }
}

#Preview {
    MicroApp1NavigationView()
}
