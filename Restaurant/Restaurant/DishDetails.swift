//
//  DishDetails.swift
//  Restaurant
//
//  Created by Jacob Croket on 6/30/24.
//

import SwiftUI

struct DishDetails: View {
    @Environment(\.managedObjectContext) private var viewContext
    @ObservedObject var dish: Dish
    
    var body: some View {
        NavigationView(content: {
            VStack {
                    AsyncImage(url: URL(string: dish.image!)) { image in
                        image
                            .image?.resizable()
                            .scaledToFit()
                            .padding(15)
                    Text(dish.itemDescription ?? "This is a dish you can purchase from Little Lemon")
                        .foregroundStyle(Color.primary2)
                        .font(.title2)
                        .padding(10)
                    }
                Text("$\(dish.price ?? "DISH PRICE")")
                    .foregroundStyle(Color.primary2)
                    .bold()
                    .font(.title2)
                    .padding(.top, -10)
                Spacer()
            }
            .navigationBarTitle(dish.title ?? "DISH")
            .ignoresSafeArea(edges: .bottom)
        })
    }
}

#Preview {
    DishDetails(dish: PersistenceController.shared.sampleDish)
        //.environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
}

//sample core data object
extension PersistenceController {
    var sampleDish: Dish {
        let context = Self.shared.container.viewContext
        let dish = Dish(context: context)
        dish.title = "Greek Salad"
        dish.price = "10"
        dish.image = "https://github.com/Meta-Mobile-Developer-PC/Working-With-Data-API/blob/main/images/greekSalad.jpg?raw=true"
        dish.itemDescription = "The famous greek salad of crispy lettuce, peppers, olives, our Chicago."
        
        return dish
    }
}
