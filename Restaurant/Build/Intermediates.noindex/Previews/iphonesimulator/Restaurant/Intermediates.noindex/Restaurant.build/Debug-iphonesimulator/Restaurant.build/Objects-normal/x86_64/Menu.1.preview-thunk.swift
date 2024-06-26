@_private(sourceFile: "Menu.swift") import Restaurant
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension Menu {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Capstone/littlelemon/Restaurant/Restaurant/Menu.swift", line: 12)
        Text(__designTimeString("#9856.[1].[0].property.[0].[0].arg[0].value", fallback: "Little Lemon"))
        Text(__designTimeString("#9856.[1].[0].property.[0].[1].arg[0].value", fallback: "Chicago"))
        Text(__designTimeString("#9856.[1].[0].property.[0].[2].arg[0].value", fallback: "Little Lemon, your local Mediterainean bistro"))
        List {
            
        }
    
#sourceLocation()
    }
}

import struct Restaurant.Menu
#Preview {
    Menu()
}



