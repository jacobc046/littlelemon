#import <Foundation/Foundation.h>

#if __has_attribute(swift_private)
#define AC_SWIFT_PRIVATE __attribute__((swift_private))
#else
#define AC_SWIFT_PRIVATE
#endif

/// The resource bundle ID.
static NSString * const ACBundleID AC_SWIFT_PRIVATE = @"Jacob-Croket.Restaurant";

/// The "primary1" asset catalog color resource.
static NSString * const ACColorNamePrimary1 AC_SWIFT_PRIVATE = @"primary1";

/// The "primary2" asset catalog color resource.
static NSString * const ACColorNamePrimary2 AC_SWIFT_PRIVATE = @"primary2";

/// The "primary3" asset catalog color resource.
static NSString * const ACColorNamePrimary3 AC_SWIFT_PRIVATE = @"primary3";

/// The "secondary1" asset catalog color resource.
static NSString * const ACColorNameSecondary1 AC_SWIFT_PRIVATE = @"secondary1";

/// The "secondary2" asset catalog color resource.
static NSString * const ACColorNameSecondary2 AC_SWIFT_PRIVATE = @"secondary2";

/// The "secondary3" asset catalog color resource.
static NSString * const ACColorNameSecondary3 AC_SWIFT_PRIVATE = @"secondary3";

/// The "secondary4" asset catalog color resource.
static NSString * const ACColorNameSecondary4 AC_SWIFT_PRIVATE = @"secondary4";

/// The "Default Profile Picture" asset catalog image resource.
static NSString * const ACImageNameDefaultProfilePicture AC_SWIFT_PRIVATE = @"Default Profile Picture";

/// The "Hero image" asset catalog image resource.
static NSString * const ACImageNameHeroImage AC_SWIFT_PRIVATE = @"Hero image";

/// The "Logo" asset catalog image resource.
static NSString * const ACImageNameLogo AC_SWIFT_PRIVATE = @"Logo";

/// The "Profile" asset catalog image resource.
static NSString * const ACImageNameProfile AC_SWIFT_PRIVATE = @"Profile";

#undef AC_SWIFT_PRIVATE
