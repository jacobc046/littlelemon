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
        #sourceLocation(file: "/Users/jacobc/Development/swift/Capstone/littlelemon/Restaurant/Restaurant/Onboarding.swift", line: 29)
        NavigationStack {
            VStack {
                TextField(__designTimeString("#4878.[5].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "First name"), text: $firstName)
                TextField(__designTimeString("#4878.[5].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value", fallback: "Last name"), text: $lastName)
                TextField(__designTimeString("#4878.[5].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value", fallback: "Email"), text: $email)
                    .keyboardType(.emailAddress)
                Button(action: {
                    if firstName.isEmpty || lastName.isEmpty || email.isEmpty || !isValid(email: email) {
                        UserDefaults.standard.set(firstName, forKey: kFirstName)
                        UserDefaults.standard.set(lastName, forKey: kLastName)
                        UserDefaults.standard.set(email, forKey: kEmail)
                    } else {
                        isLoggedIn = __designTimeBoolean("#4878.[5].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[0].[1].[0].[0]", fallback: true)
                    }
                }, label: {Text(__designTimeString("#4878.[5].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].arg[0].value", fallback: "Register"))})
            }
            .navigationDestination(isPresented: $isLoggedIn, destination: { Home() })
        }
    
#sourceLocation()
    }
}

@_dynamicReplacement(for: isValid(email:)) private func __preview__isValid(email:String) -> Bool {
#sourceLocation(file: "/Users/jacobc/Development/swift/Capstone/littlelemon/Restaurant/Restaurant/Onboarding.swift", line: 15)
    guard !email.isEmpty else { return false }
    let emailValidationRegex = __designTimeString("#4878.[4].[1].value", fallback: "^[\\p{L}0-9!#$%&'*+\\/=?^_`{|}~-][\\p{L}0-9.!#$%&'*+\\/=?^_`{|}~-]{0,63}@[\\p{L}0-9-]+(?:\\.[\\p{L}0-9-]{2,7})*$")
    let emailValidationPredicate = NSPredicate(format: __designTimeString("#4878.[4].[2].value.arg[0].value", fallback: "SELF MATCHES %@"), emailValidationRegex)
    return emailValidationPredicate.evaluate(with: email)

#sourceLocation()
}

import struct Restaurant.Onboarding
#Preview {
    Onboarding()
}



