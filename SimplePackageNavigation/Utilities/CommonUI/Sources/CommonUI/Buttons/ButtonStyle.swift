import SwiftUI

public struct GreenButton: ButtonStyle {
    let isEnabled: Bool
    public init(isEnabled: Bool) {
        self.isEnabled = isEnabled
    }

    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(isEnabled ? Color.primaryDark : Color.primaryLight)
            .foregroundStyle(isEnabled ? Color.primaryLight : Color.primaryDark)
            .clipShape(Capsule())
    }
}

public struct LightGreenButton: ButtonStyle {
    public init() {}
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color.secondaryLight)
            .foregroundStyle(Color.primaryDark)
            .clipShape(Capsule())
    }
}

#Preview {
    VStack {
        Button("Green Button Style Enabled") {}
            .buttonStyle(GreenButton(isEnabled: true))

        Button("Green Button Style Disabled") {}
            .buttonStyle(GreenButton(isEnabled: false))

        Button("Light Green Button") {}
            .buttonStyle(LightGreenButton())
    }
}
