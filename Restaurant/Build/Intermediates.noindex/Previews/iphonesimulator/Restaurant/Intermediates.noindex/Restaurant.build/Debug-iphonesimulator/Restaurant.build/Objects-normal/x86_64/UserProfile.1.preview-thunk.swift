@_private(sourceFile: "UserProfile.swift") import Restaurant
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension UserProfile {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Capstone/littlelemon/Restaurant/Restaurant/UserProfile.swift", line: 12)
        VStack {
            Text(__designTimeString("#17614.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "Personal information"))
            Image(__designTimeString("#17614.[1].[0].property.[0].[0].arg[0].value.[1].arg[0].value", fallback: "profile-image-placeholder"))
            TextField(__designTimeString("#17614.[1].[0].property.[0].[0].arg[0].value.[2].arg[0].value", fallback: "First name"), value: $firstName)
        }
    
#sourceLocation()
    }
}

import struct Restaurant.UserProfile
#Preview {
    UserProfile()
}



