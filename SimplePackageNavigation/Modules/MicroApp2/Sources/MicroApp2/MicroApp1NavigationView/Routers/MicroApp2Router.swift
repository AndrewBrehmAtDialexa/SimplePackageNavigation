import Navigation
import SwiftUI

public class MicroApp2Router: ObservableObject {
    public static let shared: MicroApp2Router = .init()

    public enum Destination: Codable, Hashable {
        case view2
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
