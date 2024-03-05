import MicroApp1
import MicroApp2
import SwiftUI

public struct BottomTabView: View {
    public init() {}

    var didAppear: ((Self) -> Void)?

    public var body: some View {
        TabView {
            MicroApp1NavigationView()
                .tabItem {
                    Label("Tab1", systemImage: "1.lane")
                }
            MicroApp2NavigationView()
                .tabItem {
                    Label("Tab2", systemImage: "2.lane")
                }
        }
        .onAppear { self.didAppear?(self) }
    }
}

#Preview {
    BottomTabView()
}
