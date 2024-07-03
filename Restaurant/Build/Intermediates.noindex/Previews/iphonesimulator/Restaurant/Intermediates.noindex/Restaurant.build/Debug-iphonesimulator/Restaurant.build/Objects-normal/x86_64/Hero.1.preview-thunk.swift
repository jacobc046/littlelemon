@_private(sourceFile: "Hero.swift") import Restaurant
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension Hero {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Capstone/littlelemon/Restaurant/Restaurant/Hero.swift", line: 12)
        VStack {
            VStack {
                Text(__designTimeString("#8098.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "Little Lemon"))
                    .font(.custom(__designTimeString("#8098.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: "AmericanTypewriter"), size: __designTimeInteger("#8098.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[0].arg[0].value.arg[1].value", fallback: 42)))
                    .foregroundStyle(Color.primary3)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, __designTimeInteger("#8098.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[3].arg[1].value", fallback: 15))
                    .padding(.top, __designTimeInteger("#8098.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[4].arg[1].value", fallback: 10))
                
                Text(__designTimeString("#8098.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value", fallback: "Chicago"))
                    .font(.custom(__designTimeString("#8098.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: "AmericanTypewriter"), size: __designTimeInteger("#8098.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[0].arg[0].value.arg[1].value", fallback: 24)))
                    .foregroundStyle(Color.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, __designTimeInteger("#8098.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[3].arg[1].value", fallback: 15))
                
                HStack {
                    Text(__designTimeString("#8098.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value", fallback: "We are a family owned Mediterranean resaurant focued on traditional recipies served with a modern twist."))
                        .foregroundStyle(Color.white)
                        .fixedSize(horizontal: __designTimeBoolean("#8098.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].modifier[1].arg[0].value", fallback: false), vertical: __designTimeBoolean("#8098.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].modifier[1].arg[1].value", fallback: true))
                    
                    Image(__designTimeString("#8098.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[1].arg[0].value", fallback: "Hero image"))
                        .resizable()
                        .frame(width: __designTimeInteger("#8098.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[1].modifier[1].arg[0].value", fallback: 100), height: __designTimeInteger("#8098.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[1].modifier[1].arg[1].value", fallback: 100))
                        .clipShape(RoundedRectangle(cornerSize: CGSize(width: __designTimeInteger("#8098.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[1].modifier[2].arg[0].value.arg[0].value.arg[0].value", fallback: 20), height: __designTimeInteger("#8098.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[1].modifier[2].arg[0].value.arg[0].value.arg[1].value", fallback: 10))))
                }
                .padding(.init(top: __designTimeInteger("#8098.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[2].modifier[0].arg[0].value.arg[0].value", fallback: 0), leading: __designTimeInteger("#8098.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[2].modifier[0].arg[0].value.arg[1].value", fallback: 15), bottom: __designTimeInteger("#8098.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[2].modifier[0].arg[0].value.arg[2].value", fallback: 15), trailing: __designTimeInteger("#8098.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[2].modifier[0].arg[0].value.arg[3].value", fallback: 15)))
            }
            .background(Color.primary1)
        }
    
#sourceLocation()
    }
}

import struct Restaurant.Hero
#Preview {
    Hero()
}



