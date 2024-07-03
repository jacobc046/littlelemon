@_private(sourceFile: "Onboarding.swift") import Restaurant
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension Onboarding {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Capstone/littlelemon/Restaurant/Restaurant/Onboarding.swift", line: 49)
        NavigationStack {
            Image(__designTimeString("#999.[11].[6].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "Logo"))
            Hero()
                
                VStack(alignment: .leading) {
                    TextField(__designTimeString("#999.[11].[6].property.[0].[0].arg[0].value.[2].arg[1].value.[0].arg[0].value", fallback: "First name *"), text: $firstName)
                        .textFieldStyle(.roundedBorder)
                    TextField(__designTimeString("#999.[11].[6].property.[0].[0].arg[0].value.[2].arg[1].value.[1].arg[0].value", fallback: "Last name *"), text: $lastName)
                        .textFieldStyle(.roundedBorder)
                    TextField(__designTimeString("#999.[11].[6].property.[0].[0].arg[0].value.[2].arg[1].value.[2].arg[0].value", fallback: "Email *"), text: $email)
                        .textFieldStyle(.roundedBorder)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)
                    
                    //register button
                    Button(action: {
                        if !(firstName.isEmpty || lastName.isEmpty) && isValid(email: email) {
                            setUserDefaults()
                            isLoggedIn = __designTimeBoolean("#999.[11].[6].property.[0].[0].arg[0].value.[2].arg[1].value.[3].arg[0].value.[0].[0].[1].[0]", fallback: true)
                        }
                    }, label: {Text(__designTimeString("#999.[11].[6].property.[0].[0].arg[0].value.[2].arg[1].value.[3].arg[1].value.[0].arg[0].value", fallback: "Register"))})
                    .foregroundStyle(Color.white)
                    .frame(maxWidth: .infinity, maxHeight: __designTimeInteger("#999.[11].[6].property.[0].[0].arg[0].value.[2].arg[1].value.[3].modifier[1].arg[1].value", fallback: 40))
                    .background(Color.primary1)
                    .clipShape(RoundedRectangle(cornerRadius: __designTimeInteger("#999.[11].[6].property.[0].[0].arg[0].value.[2].arg[1].value.[3].modifier[3].arg[0].value.arg[0].value", fallback: 10)))
                    
                    Spacer()
                }
                .padding(__designTimeInteger("#999.[11].[6].property.[0].[0].arg[0].value.[2].modifier[0].arg[0].value", fallback: 10))
                .navigationDestination(isPresented: $isLoggedIn, destination: { Home()
                    .environment(\.managedObjectContext, viewContext) })
            }
            .onAppear {
                if UserDefaults.standard.bool(forKey: kIsLoggedIn) {
                    isLoggedIn = __designTimeBoolean("#999.[11].[6].property.[0].[0].modifier[0].arg[0].value.[0].[0].[0].[0]", fallback: true)
                }
            }
        
#sourceLocation()
    }
}

extension Onboarding {
    @_dynamicReplacement(for: setUserDefaults()) private func __preview__setUserDefaults() {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Capstone/littlelemon/Restaurant/Restaurant/Onboarding.swift", line: 37)
        UserDefaults.standard.set(firstName, forKey: kFirstName)
        UserDefaults.standard.set(lastName, forKey: kLastName)
        UserDefaults.standard.set(email, forKey: kEmail)
        UserDefaults.standard.set(__designTimeBoolean("#999.[11].[5].[3].modifier[0].arg[0].value", fallback: true), forKey: kIsLoggedIn)
        UserDefaults.standard.set(kProfilePicture, forKey: kProfilePicture)
        UserDefaults.standard.set(__designTimeBoolean("#999.[11].[5].[5].modifier[0].arg[0].value", fallback: true), forKey: kOrderStatuses)
        UserDefaults.standard.set(__designTimeBoolean("#999.[11].[5].[6].modifier[0].arg[0].value", fallback: true), forKey: kPasswordChanges)
        UserDefaults.standard.set(__designTimeBoolean("#999.[11].[5].[7].modifier[0].arg[0].value", fallback: true), forKey: kSpecialOffers)
        UserDefaults.standard.set(__designTimeBoolean("#999.[11].[5].[8].modifier[0].arg[0].value", fallback: true), forKey: kNewsletter)
    
#sourceLocation()
    }
}

@_dynamicReplacement(for: isValid(email:)) private func __preview__isValid(email:String) -> Bool {
#sourceLocation(file: "/Users/jacobc/Development/swift/Capstone/littlelemon/Restaurant/Restaurant/Onboarding.swift", line: 21)
    guard !email.isEmpty else { return false }
    let emailValidationRegex = __designTimeString("#999.[10].[1].value", fallback: "^[\\p{L}0-9!#$%&'*+\\/=?^_`{|}~-][\\p{L}0-9.!#$%&'*+\\/=?^_`{|}~-]{0,63}@[\\p{L}0-9-]+(?:\\.[\\p{L}0-9-]{2,7})*$")
    let emailValidationPredicate = NSPredicate(format: __designTimeString("#999.[10].[2].value.arg[0].value", fallback: "SELF MATCHES %@"), emailValidationRegex)
    return emailValidationPredicate.evaluate(with: email)

#sourceLocation()
}

import struct Restaurant.Onboarding
#Preview {
    Onboarding()
        .environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
}



