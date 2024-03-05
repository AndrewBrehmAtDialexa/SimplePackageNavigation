import CommonUI
import SwiftUI

public struct CommonView1: View {
    @ObservedObject var viewModel: CommonView1ViewModel

    public init(viewModel: CommonView1ViewModel? = nil) {
        if let viewModel = viewModel {
            self.viewModel = viewModel
        } else {
            self.viewModel = CommonView1ViewModel()
        }
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
            Color.yellow
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
