import Navigation
import SwiftUI

public class MicroApp1Router: ObservableObject {
    public static let shared: MicroApp1Router = .init()

    public enum Destination: Codable, Hashable {
        case view2
        case defaultCommonView1
        case customCommonView1
        case view3
    }

    @Published public var navPathWrapper = NavigationPathWrapper()

    public func navigate(to destination: Destination) {
        navPathWrapper.appendToNavPath(destination)
    }

    public func navigateBack() {
        navPathWrapper.navigateBack()
    }

    public func navigateToRoot() {
        navPathWrapper.navigateToRoot()
    }
}
