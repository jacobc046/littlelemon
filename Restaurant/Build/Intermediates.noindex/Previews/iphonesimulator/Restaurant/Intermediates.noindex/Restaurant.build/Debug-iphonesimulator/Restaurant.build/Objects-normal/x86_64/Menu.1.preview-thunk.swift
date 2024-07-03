@_private(sourceFile: "Menu.swift") import Restaurant
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import Foundation
import CoreData
import SwiftUI

extension Menu {
    @_dynamicReplacement(for: getMenuData()) private func __preview__getMenuData() {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Capstone/littlelemon/Restaurant/Restaurant/Menu.swift", line: 76)
        PersistenceController.shared.clear() //clear database before resaving menu
        
        let url: URL = URL(string: __designTimeString("#589.[3].[7].[1].value.[0]", fallback: "https://raw.githubusercontent.com/Meta-Mobile-Developer-PC/Working-With-Data-API/main/menu.json"))!
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) {data, response, error in
            if let data = data {
                let decoder = JSONDecoder()
                do {
                    let menuList = try decoder.decode(MenuList.self, from: data)
                    let menuItems = menuList.menu
                    
                    for item in menuItems {
                        let oneDish = Dish(context: viewContext)
                        oneDish.title = item.title
                        oneDish.price = item.price
                        oneDish.image = item.image
                        oneDish.itemDescription = item.itemDescription
                    }
                    try viewContext.save() //save data into database
                    
                } catch {
                    print("Error decoding JSON: \(error.localizedDescription)")
                }
            }
        }
        task.resume()
    
#sourceLocation()
    }
}

extension Menu {
    @_dynamicReplacement(for: buildPredicate()) private func __preview__buildPredicate() -> NSPredicate {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Capstone/littlelemon/Restaurant/Restaurant/Menu.swift", line: 68)
        if searchText.isEmpty {
            return NSPredicate(value: __designTimeBoolean("#589.[3].[6].[0].[0].[0].arg[0].value", fallback: true))
        } else {
            return NSPredicate(format: __designTimeString("#589.[3].[6].[0].[1].[0].arg[0].value", fallback: "title CONTAINS[cd] %@"), searchText)
        }
    
#sourceLocation()
    }
}

extension Menu {
    @_dynamicReplacement(for: buildSortDescriptors()) private func __preview__buildSortDescriptors() -> [NSSortDescriptor] {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Capstone/littlelemon/Restaurant/Restaurant/Menu.swift", line: 64)
        return [NSSortDescriptor(key: __designTimeString("#589.[3].[5].[0].[0].arg[0].value", fallback: "title"), ascending: __designTimeBoolean("#589.[3].[5].[0].[0].arg[1].value", fallback: true), selector: #selector(NSString.localizedStandardCompare))]
    
#sourceLocation()
    }
}

extension Menu {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Capstone/littlelemon/Restaurant/Restaurant/Menu.swift", line: 22)
        VStack {
            //fetch all dishes and make them available for use in closure
            //FetchedObjects: FetchedObjects()
            FetchedObjects(predicate: buildPredicate(), sortDescriptors: buildSortDescriptors()) { (dishes: [Dish]) in
                NavigationView(content: {
                    List {
                        ForEach(dishes, id: \.self) { dish in
                            NavigationLink(destination: DishDetails(dish: dish), label: {
                                HStack {
                                    VStack{
                                        Text(dish.title ?? __designTimeString("#589.[3].[4].property.[0].[0].arg[0].value.[0].arg[2].value.[0].arg[0].value.[0].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0]", fallback: "TITLE"))
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .bold()
                                        Text(dish.itemDescription ?? __designTimeString("#589.[3].[4].property.[0].[0].arg[0].value.[0].arg[2].value.[0].arg[0].value.[0].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0]", fallback: "DESCRIPTION"))
                                            .lineLimit(__designTimeInteger("#589.[3].[4].property.[0].[0].arg[0].value.[0].arg[2].value.[0].arg[0].value.[0].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].arg[0].value.[0].arg[0].value.[1].modifier[0].arg[0].value", fallback: 2))
                                            .foregroundStyle(Color.primary2)
                                        Text("$\(dish.price ?? __designTimeString("#589.[3].[4].property.[0].[0].arg[0].value.[0].arg[2].value.[0].arg[0].value.[0].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[1].value.arg[0].value.[0]", fallback: "PRICE"))")
                                            .foregroundStyle(Color.primary2)
                                            .bold()
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                    }
                                    Spacer()
                                    AsyncImage(url: URL(string: dish.image!)) { image in
                                            image
                                            .image?.resizable()
                                            .scaledToFit()
                                            .frame(maxWidth: __designTimeInteger("#589.[3].[4].property.[0].[0].arg[0].value.[0].arg[2].value.[0].arg[0].value.[0].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].arg[0].value.[2].arg[1].value.[0].modifier[2].arg[0].value", fallback: 100), maxHeight: __designTimeInteger("#589.[3].[4].property.[0].[0].arg[0].value.[0].arg[2].value.[0].arg[0].value.[0].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].arg[0].value.[2].arg[1].value.[0].modifier[2].arg[1].value", fallback: 175))
                                    }
                                }
                            })
                        }
                    }
                    .listStyle(.inset)
                })
            }
        }
        .onAppear {
            getMenuData()
        }
    
#sourceLocation()
    }
}

import struct Restaurant.Menu
#Preview {
    Menu()
        .environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
}



