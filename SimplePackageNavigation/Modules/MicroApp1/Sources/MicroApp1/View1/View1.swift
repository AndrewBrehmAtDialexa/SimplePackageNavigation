import SwiftUI

struct View1: View {
    var viewModel = View1ViewModel()

    var body: some View {
        VStack {
            Text("Micro App 1")
            Text("View 1")
            Button("GO TO View2") {
                viewModel.goToView2ButtonTapped()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
            Color.red.opacity(0.5)
        }
    }
}

#Preview {
    View1()
}
