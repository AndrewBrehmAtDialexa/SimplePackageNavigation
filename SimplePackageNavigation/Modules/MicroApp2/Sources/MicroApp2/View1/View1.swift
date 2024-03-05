import SwiftUI

struct View1: View {
    var viewModel = View1ViewModel()

    var body: some View {
        VStack {
            Text("Micro App 2")
            Text("View 1")
            Button("GO TO View2") {
                viewModel.goToView2ButtonTapped()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
            Color.green.opacity(0.25)
        }
    }
}

#Preview {
    View1()
}
