@_private(sourceFile: "Home.swift") import Restaurant
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import CoreData
import SwiftUI

extension Home {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Capstone/littlelemon/Restaurant/Restaurant/Home.swift", line: 16)
        VStack {
            
            //heading
            ZStack {
                Image(__designTimeString("#11706.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "Logo"))
                Button(action: {
                    showUserSettings.toggle()
                }, label: {
                    Image(UserDefaults.standard.string(forKey: kProfilePicture) ?? __designTimeString("#11706.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0]", fallback: "Default "))
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: __designTimeInteger("#11706.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[3].arg[0].value", fallback: 55), height: __designTimeInteger("#11706.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[3].arg[1].value", fallback: 55))
                })
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing, __designTimeInteger("#11706.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[1].arg[1].value", fallback: 20))
                .sheet(isPresented: $showUserSettings, content: {
                    UserProfile()
                })
            }
            
            //body
            Hero()
            Image(systemName: __designTimeString("#11706.[2].[3].property.[0].[0].arg[0].value.[2].arg[0].value", fallback: "magnifyingglass.circle.fill"))
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: __designTimeInteger("#11706.[2].[3].property.[0].[0].arg[0].value.[2].modifier[2].arg[1].value", fallback: 50), alignment: .leading)
                .foregroundStyle(Color.secondary3)
                .padding(__designTimeInteger("#11706.[2].[3].property.[0].[0].arg[0].value.[2].modifier[4].arg[0].value", fallback: 15))
                .background(Color.primary1)
                .padding(.top, __designTimeInteger("#11706.[2].[3].property.[0].[0].arg[0].value.[2].modifier[6].arg[1].value", fallback: -10))
            
            //filters
            VStack {
                Text(__designTimeString("#11706.[2].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[0].value", fallback: "Order for delivery!"))
                    .textCase(.uppercase)
                    .font(.subheadline.bold())
                    .frame(maxWidth: .infinity, alignment: .leading)
                let selections = [__designTimeString("#11706.[2].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[1].value.[0]", fallback: "Staters"), __designTimeString("#11706.[2].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[1].value.[1]", fallback: "Mains"), __designTimeString("#11706.[2].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[1].value.[2]", fallback: "Desserts"), __designTimeString("#11706.[2].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[1].value.[3]", fallback: "Drinks")]
                HStack {
                    ForEach(selections, id: \.self) { selection in
                        Text(selection)
                            .bold()
                            .fixedSize(horizontal: __designTimeBoolean("#11706.[2].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[2].arg[0].value.[0].arg[2].value.[0].modifier[1].arg[0].value", fallback: true), vertical: __designTimeBoolean("#11706.[2].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[2].arg[0].value.[0].arg[2].value.[0].modifier[1].arg[1].value", fallback: false))
                            .foregroundStyle(Color.primary1)
                            .padding(.init(top: __designTimeInteger("#11706.[2].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[2].arg[0].value.[0].arg[2].value.[0].modifier[3].arg[0].value.arg[0].value", fallback: 5), leading: __designTimeInteger("#11706.[2].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[2].arg[0].value.[0].arg[2].value.[0].modifier[3].arg[0].value.arg[1].value", fallback: 10), bottom: __designTimeInteger("#11706.[2].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[2].arg[0].value.[0].arg[2].value.[0].modifier[3].arg[0].value.arg[2].value", fallback: 5), trailing: __designTimeInteger("#11706.[2].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[2].arg[0].value.[0].arg[2].value.[0].modifier[3].arg[0].value.arg[3].value", fallback: 10)))
                            .background(Color.secondary3)
                            .clipShape(RoundedRectangle(cornerRadius: __designTimeInteger("#11706.[2].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[2].arg[0].value.[0].arg[2].value.[0].modifier[5].arg[0].value.arg[0].value", fallback: 20)))
                    }
                    .frame(maxWidth: .infinity)
                }
            }
            .padding(__designTimeInteger("#11706.[2].[3].property.[0].[0].arg[0].value.[3].modifier[0].arg[0].value", fallback: 20))
            
            //menu
            //initialize Core Data and pass contect to the menu instance upon ilitialization
            Menu().environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
        }
        .navigationBarBackButtonHidden(__designTimeBoolean("#11706.[2].[3].property.[0].[0].modifier[0].arg[0].value", fallback: true))
        .onChange(of: showUserSettings, {
            if !UserDefaults.standard.bool(forKey: kIsLoggedIn) {
                dismiss()
            }
        })
    
#sourceLocation()
    }
}

import struct Restaurant.Home
#Preview {
    Home()
        .environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
}



