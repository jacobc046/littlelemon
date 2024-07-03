//
//  Home.swift
//  Restaurant
//
//  Created by Jacob Croket on 6/26/24.
//

import SwiftUI
import CoreData

struct Home: View {
    @State var showUserSettings = false
    @Environment(\.managedObjectContext) private var viewContext
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack {
            
            //heading
            ZStack {
                Image("Logo")
                Button(action: {
                    showUserSettings.toggle()
                }, label: {
                    Image(UserDefaults.standard.string(forKey: kProfilePicture) ?? "Default profile picture")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 55, height: 55)
                })
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing, 20)
                .sheet(isPresented: $showUserSettings, content: {
                    UserProfile()
                })
            }
            
            //body
            Hero()
            Image(systemName: "magnifyingglass.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: 50, alignment: .leading)
                .foregroundStyle(Color.secondary3)
                .padding(15)
                .background(Color.primary1)
                .padding(.top, -10)
            
            //filters
            VStack {
                Text("Order for delivery!")
                    .textCase(.uppercase)
                    .font(.subheadline.bold())
                    .frame(maxWidth: .infinity, alignment: .leading)
                let selections = ["Staters", "Mains", "Desserts", "Drinks"]
                HStack {
                    ForEach(selections, id: \.self) { selection in
                        Text(selection)
                            .bold()
                            .fixedSize(horizontal: true, vertical: false)
                            .foregroundStyle(Color.primary1)
                            .padding(.init(top: 5, leading: 10, bottom: 5, trailing: 10))
                            .background(Color.secondary3)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                    }
                    .frame(maxWidth: .infinity)
                }
            }
            .padding(20)
            
            //menu
            //initialize Core Data and pass contect to the menu instance upon ilitialization
            Menu().environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
        }
        .navigationBarBackButtonHidden(true)
        .onChange(of: showUserSettings, {
            if !UserDefaults.standard.bool(forKey: kIsLoggedIn) {
                dismiss()
            }
        })
    }
}

#Preview {
    Home()
        .environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
}
