@_private(sourceFile: "DishDetails.swift") import Restaurant
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension PersistenceController {
    @_dynamicReplacement(for: sampleDish) private var __preview__sampleDish: Dish {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Capstone/littlelemon/Restaurant/Restaurant/DishDetails.swift", line: 48)
        let context = Self.shared.container.viewContext
        let dish = Dish(context: context)
        dish.title = __designTimeString("#11021.[3].[0].property.[0].[2].[0]", fallback: "Greek Salad")
        dish.price = __designTimeString("#11021.[3].[0].property.[0].[3].[0]", fallback: "10")
        dish.image = __designTimeString("#11021.[3].[0].property.[0].[4].[0]", fallback: "https://github.com/Meta-Mobile-Developer-PC/Working-With-Data-API/blob/main/images/greekSalad.jpg?raw=true")
        dish.itemDescription = __designTimeString("#11021.[3].[0].property.[0].[5].[0]", fallback: "The famous greek salad of crispy lettuce, peppers, olives, our Chicago.")
        
        return dish
    
#sourceLocation()
    }
}

extension DishDetails {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Capstone/littlelemon/Restaurant/Restaurant/DishDetails.swift", line: 15)
        NavigationView(content: {
            VStack {
                    AsyncImage(url: URL(string: dish.image!)) { image in
                        image
                            .image?.resizable()
                            .scaledToFit()
                            .padding(__designTimeInteger("#11021.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 10))
                    Text(dish.itemDescription ?? __designTimeString("#11021.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].arg[0].value.[0]", fallback: "This is a dish you can purchase from Little Lemon"))
                        .foregroundStyle(Color.primary2)
                        .font(.title2)
                        .padding(__designTimeInteger("#11021.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[2].arg[0].value", fallback: 10))
                    }
                Text("$\(dish.price ?? __designTimeString("#11021.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1].value.arg[0].value.[0]", fallback: "DISH PRICE"))")
                    .foregroundStyle(Color.primary2)
                    .bold()
                    .font(.title2)
                    .padding(.top, __designTimeInteger("#11021.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[3].arg[1].value", fallback: -10))
                Spacer()
            }
            .navigationBarTitle(dish.title ?? __designTimeString("#11021.[1].[2].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0]", fallback: "DISH"))
            .ignoresSafeArea(edges: .bottom)
        })
    
#sourceLocation()
    }
}

import struct Restaurant.DishDetails
#Preview {
    DishDetails(dish: PersistenceController.shared.sampleDish)
        //.environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
}



