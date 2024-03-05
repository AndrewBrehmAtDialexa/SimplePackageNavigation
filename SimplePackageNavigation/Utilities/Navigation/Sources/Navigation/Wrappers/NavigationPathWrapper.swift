import SwiftUI

public class NavigationPathWrapper: ObservableObject {
    @Published public var navPath = NavigationPath()
    
    public init() {}
    
    public func appendToNavPath<V>(_ value: V) where V: Decodable, V: Encodable, V: Hashable {
        navPath.append(value)
    }
    
    public func navigateBack() {
        guard navPath.count > 0 else { return }
        
        navPath.removeLast()
    }
    
    public func navigateToRoot() {
        guard navPath.count > 0 else { return }
        
        navPath.removeLast(navPath.count)
    }
}
