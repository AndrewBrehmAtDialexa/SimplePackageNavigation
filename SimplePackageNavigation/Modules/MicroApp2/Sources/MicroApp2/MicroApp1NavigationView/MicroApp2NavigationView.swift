import SwiftUI

public struct MicroApp2NavigationView: View {
    var viewModel = MicroApp2NavigationViewModel()
    @ObservedObject var navPathWrapper = MicroApp2Router.shared.navPathWrapper

    public init() {}

    public var body: some View {
        NavigationStack(path: $navPathWrapper.navPath) {
            View1()
                .navigationDestination(for: MicroApp2Router.Destination.self) { destination in
                    switch destination {
                    case .view2:
                        viewModel.createView2()
                    }
                }
        }
    }
}

#Preview {
    MicroApp2NavigationView()
}
