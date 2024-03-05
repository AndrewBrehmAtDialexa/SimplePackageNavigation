import CommonUI
import SwiftUI

struct View2: View {
    var viewModel = View2ViewModel()

    var body: some View {
        VStack {
            Text("Micro App 1")
            Text("View 2")
            Button("GO TO DEFAULT CommonView1") {
                viewModel.goToDefaultCommonView1ButtonTapped()
            }
            .buttonStyle(GreenButton(isEnabled: true))
            Button("GO TO CUSTOM CommonView1") {
                viewModel.goToCustomCommonView1ButtonTapped()
            }
            .buttonStyle(LightGreenButton())
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
            Color.orange.opacity(0.35)
        }
    }
}

#Preview {
    View2()
}
