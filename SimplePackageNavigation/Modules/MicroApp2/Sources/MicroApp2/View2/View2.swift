import CommonUI
import SwiftUI

struct View2: View {
    var viewModel = View2ViewModel()

    var body: some View {
        VStack {
            Text("Micro App 2")
            Text("View 2")
            Button("GO BACK") {
                viewModel.goBackButtonTapped()
            }
            .buttonStyle(GreenButton(isEnabled: true))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
            Color.blue.opacity(0.25)
        }
    }
}

#Preview {
    View2()
}
