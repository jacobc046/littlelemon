import Foundation
#if canImport(AppKit)
import AppKit
#endif
#if canImport(UIKit)
import UIKit
#endif
#if canImport(SwiftUI)
import SwiftUI
#endif
#if canImport(DeveloperToolsSupport)
import DeveloperToolsSupport
#endif

#if SWIFT_PACKAGE
private let resourceBundle = Foundation.Bundle.module
#else
private class ResourceBundleClass {}
private let resourceBundle = Foundation.Bundle(for: ResourceBundleClass.self)
#endif

// MARK: - Color Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ColorResource {

    /// The "primary1" asset catalog color resource.
    static let primary1 = DeveloperToolsSupport.ColorResource(name: "primary1", bundle: resourceBundle)

    /// The "primary2" asset catalog color resource.
    static let primary2 = DeveloperToolsSupport.ColorResource(name: "primary2", bundle: resourceBundle)

    /// The "primary3" asset catalog color resource.
    static let primary3 = DeveloperToolsSupport.ColorResource(name: "primary3", bundle: resourceBundle)

    /// The "secondary1" asset catalog color resource.
    static let secondary1 = DeveloperToolsSupport.ColorResource(name: "secondary1", bundle: resourceBundle)

    /// The "secondary2" asset catalog color resource.
    static let secondary2 = DeveloperToolsSupport.ColorResource(name: "secondary2", bundle: resourceBundle)

    /// The "secondary3" asset catalog color resource.
    static let secondary3 = DeveloperToolsSupport.ColorResource(name: "secondary3", bundle: resourceBundle)

    /// The "secondary4" asset catalog color resource.
    static let secondary4 = DeveloperToolsSupport.ColorResource(name: "secondary4", bundle: resourceBundle)

}

// MARK: - Image Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ImageResource {

    /// The "Default Profile Picture" asset catalog image resource.
    static let defaultProfilePicture = DeveloperToolsSupport.ImageResource(name: "Default Profile Picture", bundle: resourceBundle)

    /// The "Hero image" asset catalog image resource.
    static let hero = DeveloperToolsSupport.ImageResource(name: "Hero image", bundle: resourceBundle)

    /// The "Logo" asset catalog image resource.
    static let logo = DeveloperToolsSupport.ImageResource(name: "Logo", bundle: resourceBundle)

    /// The "Profile" asset catalog image resource.
    static let profile = DeveloperToolsSupport.ImageResource(name: "Profile", bundle: resourceBundle)

}

// MARK: - Color Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSColor {

    /// The "primary1" asset catalog color.
    static var primary1: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .primary1)
#else
        .init()
#endif
    }

    /// The "primary2" asset catalog color.
    static var primary2: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .primary2)
#else
        .init()
#endif
    }

    /// The "primary3" asset catalog color.
    static var primary3: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .primary3)
#else
        .init()
#endif
    }

    /// The "secondary1" asset catalog color.
    static var secondary1: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .secondary1)
#else
        .init()
#endif
    }

    /// The "secondary2" asset catalog color.
    static var secondary2: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .secondary2)
#else
        .init()
#endif
    }

    /// The "secondary3" asset catalog color.
    static var secondary3: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .secondary3)
#else
        .init()
#endif
    }

    /// The "secondary4" asset catalog color.
    static var secondary4: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .secondary4)
#else
        .init()
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

    /// The "primary1" asset catalog color.
    static var primary1: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .primary1)
#else
        .init()
#endif
    }

    /// The "primary2" asset catalog color.
    static var primary2: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .primary2)
#else
        .init()
#endif
    }

    /// The "primary3" asset catalog color.
    static var primary3: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .primary3)
#else
        .init()
#endif
    }

    /// The "secondary1" asset catalog color.
    static var secondary1: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .secondary1)
#else
        .init()
#endif
    }

    /// The "secondary2" asset catalog color.
    static var secondary2: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .secondary2)
#else
        .init()
#endif
    }

    /// The "secondary3" asset catalog color.
    static var secondary3: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .secondary3)
#else
        .init()
#endif
    }

    /// The "secondary4" asset catalog color.
    static var secondary4: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .secondary4)
#else
        .init()
#endif
    }

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

    /// The "primary1" asset catalog color.
    static var primary1: SwiftUI.Color { .init(.primary1) }

    /// The "primary2" asset catalog color.
    static var primary2: SwiftUI.Color { .init(.primary2) }

    /// The "primary3" asset catalog color.
    static var primary3: SwiftUI.Color { .init(.primary3) }

    /// The "secondary1" asset catalog color.
    static var secondary1: SwiftUI.Color { .init(.secondary1) }

    /// The "secondary2" asset catalog color.
    static var secondary2: SwiftUI.Color { .init(.secondary2) }

    /// The "secondary3" asset catalog color.
    static var secondary3: SwiftUI.Color { .init(.secondary3) }

    /// The "secondary4" asset catalog color.
    static var secondary4: SwiftUI.Color { .init(.secondary4) }

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

    /// The "primary1" asset catalog color.
    static var primary1: SwiftUI.Color { .init(.primary1) }

    /// The "primary2" asset catalog color.
    static var primary2: SwiftUI.Color { .init(.primary2) }

    /// The "primary3" asset catalog color.
    static var primary3: SwiftUI.Color { .init(.primary3) }

    /// The "secondary1" asset catalog color.
    static var secondary1: SwiftUI.Color { .init(.secondary1) }

    /// The "secondary2" asset catalog color.
    static var secondary2: SwiftUI.Color { .init(.secondary2) }

    /// The "secondary3" asset catalog color.
    static var secondary3: SwiftUI.Color { .init(.secondary3) }

    /// The "secondary4" asset catalog color.
    static var secondary4: SwiftUI.Color { .init(.secondary4) }

}
#endif

// MARK: - Image Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    /// The "Default Profile Picture" asset catalog image.
    static var defaultProfilePicture: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .defaultProfilePicture)
#else
        .init()
#endif
    }

    /// The "Hero image" asset catalog image.
    static var hero: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .hero)
#else
        .init()
#endif
    }

    /// The "Logo" asset catalog image.
    static var logo: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .logo)
#else
        .init()
#endif
    }

    /// The "Profile" asset catalog image.
    static var profile: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .profile)
#else
        .init()
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    /// The "Default Profile Picture" asset catalog image.
    static var defaultProfilePicture: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .defaultProfilePicture)
#else
        .init()
#endif
    }

    /// The "Hero image" asset catalog image.
    static var hero: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .hero)
#else
        .init()
#endif
    }

    /// The "Logo" asset catalog image.
    static var logo: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .logo)
#else
        .init()
#endif
    }

    /// The "Profile" asset catalog image.
    static var profile: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .profile)
#else
        .init()
#endif
    }

}
#endif

// MARK: - Thinnable Asset Support -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ColorResource {

    private init?(thinnableName: Swift.String, bundle: Foundation.Bundle) {
#if canImport(AppKit) && os(macOS)
        if AppKit.NSColor(named: NSColor.Name(thinnableName), bundle: bundle) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIColor(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSColor {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
#if !targetEnvironment(macCatalyst)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}
#endif

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ImageResource {

    private init?(thinnableName: Swift.String, bundle: Foundation.Bundle) {
#if canImport(AppKit) && os(macOS)
        if bundle.image(forResource: NSImage.Name(thinnableName)) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIImage(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !targetEnvironment(macCatalyst)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

