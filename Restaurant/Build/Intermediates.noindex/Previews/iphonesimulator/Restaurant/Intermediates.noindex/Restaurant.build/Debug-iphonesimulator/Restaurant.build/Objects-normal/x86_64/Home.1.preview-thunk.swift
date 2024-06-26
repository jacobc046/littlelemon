@_private(sourceFile: "Home.swift") import Restaurant
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension Home {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Capstone/littlelemon/Restaurant/Restaurant/Home.swift", line: 12)
        TabView {
            Menu()
                .tabItem { Label(__designTimeString("#9605.[1].[0].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0].arg[0].value", fallback: "Menu"), systemImage: __designTimeString("#9605.[1].[0].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0].arg[1].value", fallback: "list.dash")) }
            UserProfile()
                .tabItem { Label(__designTimeString("#9605.[1].[0].property.[0].[0].arg[0].value.[1].modifier[0].arg[0].value.[0].arg[0].value", fallback: "Profile"), systemImage: __designTimeString("#9605.[1].[0].property.[0].[0].arg[0].value.[1].modifier[0].arg[0].value.[0].arg[1].value", fallback: "sqaure.and.pencil"))}
        }
        .navigationBarBackButtonHidden(__designTimeBoolean("#9605.[1].[0].property.[0].[0].modifier[0].arg[0].value", fallback: true))
    
#sourceLocation()
    }
}

import struct Restaurant.Home
#Preview {
    Home()
}



