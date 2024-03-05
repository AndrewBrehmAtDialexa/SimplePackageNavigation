import SwiftUI

struct View3: View {
    var viewModel = View3ViewModel()

    var body: some View {
        VStack {
            Text("Micro App 1")
            Text("View 3")
            Button("POP to ROOT") {
                viewModel.popToRootButtonTapped()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
            Color.purple.opacity(0.35)
        }
    }
}

#Preview {
    View3()
}
