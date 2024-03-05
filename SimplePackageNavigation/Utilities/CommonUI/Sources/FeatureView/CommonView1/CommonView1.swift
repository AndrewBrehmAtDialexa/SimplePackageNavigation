import CommonUI
import SwiftUI

public struct CommonView1: View {
    @ObservedObject var viewModel: CommonView1ViewModel

    public init(viewModel: CommonView1ViewModel = .init()) {
        self.viewModel = viewModel
    }

    public var body: some View {
        VStack {
            Text("CommonView1: \(viewModel.isDefault ? "DEFAULT" : "CUSTOM")")
            Button(viewModel.buttonTitle) {
                viewModel.ctaButtonTapped()
            }
            .buttonStyle(GreenButton(isEnabled: true))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
            viewModel.isDefault ? Color.yellow.opacity(0.25) : Color.teal.opacity(0.25)
        }
    }
}

#Preview("DEFAULT") {
    CommonView1()
}

#Preview("CUSTOM") {
    var viewModel = CommonView1ViewModel(buttonTitle: "someTitle")
    var view = CommonView1(viewModel: viewModel)

    return view
}
