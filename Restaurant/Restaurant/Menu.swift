//
//  Menu.swift
//  Restaurant
//
//  Created by Jacob Croket on 6/26/24.
//

import SwiftUI
import CoreData
import Foundation

struct Menu: View {
    @State private var searchText: String = ""
    
    @Environment(\.managedObjectContext) private var viewContext
    @Environment(\.isPresented) private var isPresented
    
    @FetchRequest(entity: Dish.entity(), sortDescriptors: [])
    private var dishes: FetchedResults<Dish>
    
    var body: some View {
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
                                        Text(dish.title ?? "TITLE")
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .bold()
                                        Text(dish.itemDescription ?? "DESCRIPTION")
                                            .lineLimit(2)
                                            .foregroundStyle(Color.primary2)
                                        Text("$\(dish.price ?? "PRICE")")
                                            .foregroundStyle(Color.primary2)
                                            .bold()
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                    }
                                    Spacer()
                                    AsyncImage(url: URL(string: dish.image!)) { image in
                                            image
                                            .image?.resizable()
                                            .scaledToFit()
                                            .frame(maxWidth: 100, maxHeight: 175)
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
    }
    
    func buildSortDescriptors() -> [NSSortDescriptor] {
        return [NSSortDescriptor(key: "title", ascending: true, selector: #selector(NSString.localizedStandardCompare))]
    }
    
    func buildPredicate() -> NSPredicate {
        if searchText.isEmpty {
            return NSPredicate(value: true)
        } else {
            return NSPredicate(format: "title CONTAINS[cd] %@", searchText)
        }
    }
    
    func getMenuData() {
        PersistenceController.shared.clear() //clear database before resaving menu
        
        let url: URL = URL(string: "https://raw.githubusercontent.com/Meta-Mobile-Developer-PC/Working-With-Data-API/main/menu.json")!
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
    }
}

#Preview {
    Menu()
        .environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
}
