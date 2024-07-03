//
//  Onboarding.swift
//  Restaurant
//
//  Created by Jacob Croket on 6/26/24.
//

import SwiftUI

let kFirstName = "first name key"
let kLastName = "last name key"
let kEmail = "email key"
let kIsLoggedIn = "kIsLoggedIn"
let kProfilePicture = "Profile"
let kOrderStatuses = "order status notifications key"
let kPasswordChanges = "password change notifications key"
let kSpecialOffers = "special offer notifications key"
let kNewsletter = "newsletter notifications key"

func isValid(email:String) -> Bool {
    guard !email.isEmpty else { return false }
    let emailValidationRegex = "^[\\p{L}0-9!#$%&'*+\\/=?^_`{|}~-][\\p{L}0-9.!#$%&'*+\\/=?^_`{|}~-]{0,63}@[\\p{L}0-9-]+(?:\\.[\\p{L}0-9-]{2,7})*$"
    let emailValidationPredicate = NSPredicate(format: "SELF MATCHES %@", emailValidationRegex)
    return emailValidationPredicate.evaluate(with: email)
}
    

struct Onboarding: View {
    @State public var firstName: String = ""
    @State var lastName: String = ""
    @State var email: String = ""
    @State var isLoggedIn: Bool = false
    
    @Environment(\.managedObjectContext) private var viewContext
    
    fileprivate func setUserDefaults() {
        UserDefaults.standard.set(firstName, forKey: kFirstName)
        UserDefaults.standard.set(lastName, forKey: kLastName)
        UserDefaults.standard.set(email, forKey: kEmail)
        UserDefaults.standard.set(true, forKey: kIsLoggedIn)
        UserDefaults.standard.set(kProfilePicture, forKey: kProfilePicture)
        UserDefaults.standard.set(true, forKey: kOrderStatuses)
        UserDefaults.standard.set(true, forKey: kPasswordChanges)
        UserDefaults.standard.set(true, forKey: kSpecialOffers)
        UserDefaults.standard.set(true, forKey: kNewsletter)
    }
    
    var body: some View {
        NavigationStack {
            Image("Logo")
            Hero()
                
                VStack(alignment: .leading) {
                    TextField("First name *", text: $firstName)
                        .textFieldStyle(.roundedBorder)
                    TextField("Last name *", text: $lastName)
                        .textFieldStyle(.roundedBorder)
                    TextField("Email *", text: $email)
                        .textFieldStyle(.roundedBorder)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)
                    
                    //register button
                    Button(action: {
                        if !(firstName.isEmpty || lastName.isEmpty) && isValid(email: email) {
                            setUserDefaults()
                            isLoggedIn = true
                        }
                    }, label: {Text("Register")})
                    .foregroundStyle(Color.white)
                    .frame(maxWidth: .infinity, maxHeight: 40)
                    .background(Color.primary1)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                    Spacer()
                }
                .padding(10)
                .navigationDestination(isPresented: $isLoggedIn, destination: { Home()
                    .environment(\.managedObjectContext, viewContext) })
            }
            .onAppear {
                if UserDefaults.standard.bool(forKey: kIsLoggedIn) {
                    isLoggedIn = true
                }
            }
        }
    }

#Preview {
    Onboarding()
        .environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
}
