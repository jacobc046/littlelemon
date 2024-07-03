@_private(sourceFile: "Home.swift") import Restaurant
import func SwiftUI.__designTimeSelection
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
        __designTimeSelection(VStack {
            
            //heading
            __designTimeSelection(ZStack {
                __designTimeSelection(Image(__designTimeString("#3446.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "Logo")), "#3446.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0]")
                __designTimeSelection(Button(action: {
                    __designTimeSelection(showUserSettings.toggle(), "#3446.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0]")
                }, label: {
                    __designTimeSelection(Image(__designTimeString("#3446.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Profile"))
                        .resizable()
                        .scaledToFit()
                        .clipShape(__designTimeSelection(Circle(), "#3446.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[2].arg[0].value"))
                        .frame(width: __designTimeInteger("#3446.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[3].arg[0].value", fallback: 55), height: __designTimeInteger("#3446.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[3].arg[1].value", fallback: 55)), "#3446.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0]")
                })
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing, __designTimeInteger("#3446.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[1].arg[1].value", fallback: 20))
                .sheet(isPresented: __designTimeSelection($showUserSettings, "#3446.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[2].arg[0].value"), content: {
                    __designTimeSelection(UserProfile(), "#3446.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[2].arg[1].value.[0]")
                }), "#3446.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1]")
            }, "#3446.[2].[3].property.[0].[0].arg[0].value.[0]")
            
            //body
            __designTimeSelection(Hero(), "#3446.[2].[3].property.[0].[0].arg[0].value.[1]")
            __designTimeSelection(Image(systemName: __designTimeString("#3446.[2].[3].property.[0].[0].arg[0].value.[2].arg[0].value", fallback: "magnifyingglass.circle.fill"))
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: __designTimeInteger("#3446.[2].[3].property.[0].[0].arg[0].value.[2].modifier[2].arg[1].value", fallback: 50), alignment: .leading)
                .foregroundStyle(__designTimeSelection(Color.secondary3, "#3446.[2].[3].property.[0].[0].arg[0].value.[2].modifier[3].arg[0].value"))
                .padding(__designTimeInteger("#3446.[2].[3].property.[0].[0].arg[0].value.[2].modifier[4].arg[0].value", fallback: 15))
                .background(__designTimeSelection(Color.primary1, "#3446.[2].[3].property.[0].[0].arg[0].value.[2].modifier[5].arg[0].value"))
                .padding(.top, __designTimeInteger("#3446.[2].[3].property.[0].[0].arg[0].value.[2].modifier[6].arg[1].value", fallback: -10)), "#3446.[2].[3].property.[0].[0].arg[0].value.[2]")
            
            //filters
            __designTimeSelection(VStack {
                __designTimeSelection(Text(__designTimeString("#3446.[2].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[0].value", fallback: "Order for delivery!"))
                    .textCase(.uppercase)
                    .font(.subheadline.bold())
                    .frame(maxWidth: .infinity, alignment: .leading), "#3446.[2].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[0]")
                let selections = [__designTimeString("#3446.[2].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[1].value.[0]", fallback: "Staters"), __designTimeString("#3446.[2].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[1].value.[1]", fallback: "Mains"), __designTimeString("#3446.[2].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[1].value.[2]", fallback: "Desserts"), __designTimeString("#3446.[2].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[1].value.[3]", fallback: "Drinks")]
                __designTimeSelection(HStack {
                    __designTimeSelection(ForEach(__designTimeSelection(selections, "#3446.[2].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[2].arg[0].value.[0].arg[0].value"), id: \.self) { selection in
                        __designTimeSelection(Text(__designTimeSelection(selection, "#3446.[2].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[2].arg[0].value.[0].arg[2].value.[0].arg[0].value"))
                            .bold()
                            .fixedSize(horizontal: __designTimeBoolean("#3446.[2].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[2].arg[0].value.[0].arg[2].value.[0].modifier[1].arg[0].value", fallback: true), vertical: __designTimeBoolean("#3446.[2].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[2].arg[0].value.[0].arg[2].value.[0].modifier[1].arg[1].value", fallback: false))
                            .foregroundStyle(__designTimeSelection(Color.primary1, "#3446.[2].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[2].arg[0].value.[0].arg[2].value.[0].modifier[2].arg[0].value"))
                            .padding(.init(top: __designTimeInteger("#3446.[2].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[2].arg[0].value.[0].arg[2].value.[0].modifier[3].arg[0].value.arg[0].value", fallback: 5), leading: __designTimeInteger("#3446.[2].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[2].arg[0].value.[0].arg[2].value.[0].modifier[3].arg[0].value.arg[1].value", fallback: 10), bottom: __designTimeInteger("#3446.[2].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[2].arg[0].value.[0].arg[2].value.[0].modifier[3].arg[0].value.arg[2].value", fallback: 5), trailing: __designTimeInteger("#3446.[2].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[2].arg[0].value.[0].arg[2].value.[0].modifier[3].arg[0].value.arg[3].value", fallback: 10)))
                            .background(__designTimeSelection(Color.secondary3, "#3446.[2].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[2].arg[0].value.[0].arg[2].value.[0].modifier[4].arg[0].value"))
                            .clipShape(__designTimeSelection(RoundedRectangle(cornerRadius: __designTimeInteger("#3446.[2].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[2].arg[0].value.[0].arg[2].value.[0].modifier[5].arg[0].value.arg[0].value", fallback: 20)), "#3446.[2].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[2].arg[0].value.[0].arg[2].value.[0].modifier[5].arg[0].value")), "#3446.[2].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[2].arg[0].value.[0].arg[2].value.[0]")
                    }
                    .frame(maxWidth: .infinity), "#3446.[2].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[2].arg[0].value.[0]")
                }, "#3446.[2].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[2]")
            }
            .padding(__designTimeInteger("#3446.[2].[3].property.[0].[0].arg[0].value.[3].modifier[0].arg[0].value", fallback: 20)), "#3446.[2].[3].property.[0].[0].arg[0].value.[3]")
            
            //menu
            //initialize Core Data and pass contect to the menu instance upon ilitialization
            __designTimeSelection(Menu().environment(\.managedObjectContext, __designTimeSelection(PersistenceController.shared.container.viewContext, "#3446.[2].[3].property.[0].[0].arg[0].value.[4].modifier[0].arg[1].value")), "#3446.[2].[3].property.[0].[0].arg[0].value.[4]")
        }
        .navigationBarBackButtonHidden(__designTimeBoolean("#3446.[2].[3].property.[0].[0].modifier[0].arg[0].value", fallback: true))
        .onChange(of: __designTimeSelection(showUserSettings, "#3446.[2].[3].property.[0].[0].modifier[1].arg[0].value"), {
            if !UserDefaults.standard.bool(forKey: kIsLoggedIn) {
                __designTimeSelection(dismiss(), "#3446.[2].[3].property.[0].[0].modifier[1].arg[1].value.[0].[0].[0]")
            }
        }), "#3446.[2].[3].property.[0].[0]")
    
#sourceLocation()
    }
}

import struct Restaurant.Home
#Preview {
    Home()
        .environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
}



