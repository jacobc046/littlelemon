//
//  UserProfile.swift
//  Restaurant
//
//  Created by Jacob Croket on 6/26/24.
//

import SwiftUI

struct UserProfile: View {
    @State var firstName = UserDefaults.standard.string(forKey: kFirstName)!
    @State var lastName = UserDefaults.standard.string(forKey: kLastName)!
    @State var email = UserDefaults.standard.string(forKey: kEmail)!
    @State var profilePicture = UserDefaults.standard.string(forKey: kProfilePicture) ?? "Default Profile Picture"
    @State var orderStatusNotifications = UserDefaults.standard.bool(forKey: kOrderStatuses)
    @State var passwordChangeNotifications = UserDefaults.standard.bool(forKey: kPasswordChanges)
    @State var specialOfferNotifications = UserDefaults.standard.bool(forKey: kSpecialOffers)
    @State var newsletterNotifications = UserDefaults.standard.bool(forKey: kNewsletter)
    
    //This will automatically reference the presentation environment in SwiftUI which will allow you to reach the navigation logic.
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Image(profilePicture)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 100)
                        .clipShape(Circle())
                        .onChange(of: profilePicture, {
                            UserDefaults.standard.set(profilePicture, forKey: kProfilePicture)
                        })
                    
                    Button(action: {
                        profilePicture = "Profile"
                    }, label: {
                        Text("Change")
                            .frame(width: 80, height: 40)
                            .foregroundStyle(Color.secondary3)
                            .background(Color.primary1)
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                    })
                    .padding(10)
                    
                    Button(action: {
                        profilePicture = "Default Profile Picture"
                    }, label: {
                        Text("Remove")
                            .frame(width: 80, height: 40)
                            .foregroundStyle(Color.primary1)
                            .border(Color.primary1, width: 2)
                    })
                }
                
                //user information fields
                VStack(alignment: .leading) {
                    InformationField(fieldTitle: "First Name", text: firstName, key: kFirstName, keyboardType: .default)
                    InformationField(fieldTitle: "Last Name", text: lastName, key: kLastName, keyboardType: .default)
                    InformationField(fieldTitle: "Email", text: email, key: kEmail, keyboardType: .emailAddress)
                }
                .padding(10)
                
                
                //email prefrences
                VStack(alignment: .leading) {
                    Text("Email notifications")
                        .font(.title3)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Checkbox(isOn: $orderStatusNotifications, notification: "Order statuses", key: kOrderStatuses)
                    Checkbox(isOn: $passwordChangeNotifications, notification: "Password hanges", key: kPasswordChanges)
                    Checkbox(isOn: $specialOfferNotifications, notification: "Special offers", key: kSpecialOffers)
                    Checkbox(isOn: $newsletterNotifications, notification: "Newsletter", key: kNewsletter)
                }
                .padding(15)
                
                
                //logout
                Button(action: {
                    UserDefaults.standard.set(false, forKey: kIsLoggedIn)
                    dismiss()
                }, label: { 
                    Text("Log out")
                        .frame(width: 350, height: 40)
                        .foregroundStyle(Color.black)
                        .background(Color.primary3)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                })
                .padding(10)
                
                Spacer()
            }
            .navigationTitle("Personal Information")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {
                Button(action: {
                    dismiss()
                }, label: {
                    Text("Done")
                        .foregroundStyle(Color.cyan)
                })
            })
        }
    }
}

struct InformationField: View {
    let fieldTitle: String
    @State var text: String
    let key: String
    let keyboardType: UIKeyboardType
    
    var body: some View {
        Text(fieldTitle)
            .font(.footnote)
        TextField(fieldTitle, text: $text)
            .textFieldStyle(.roundedBorder)
            .keyboardType(keyboardType)
            .padding(.bottom, 15)
            .onChange(of: text, {
                UserDefaults.standard.set(text, forKey: key)
            })
    }
}

struct Checkbox: View {
    @Binding var isOn: Bool
    let notification: String
    let key: String
    
    var body: some View {
        HStack {
            Button(action: {
                isOn.toggle()
            }, label: {
                Image(systemName: "\(isOn ? "checkmark.square.fill" : "square")")
                    .symbolEffect(.bounce, value: isOn)
            })
            .onChange(of: isOn, {
                UserDefaults.standard.set(isOn, forKey: key)
            })
            Text(notification)
        }
        .foregroundStyle(Color.primary1)
        .padding(.top, 2)
        .padding(.bottom, 5)
    }
}

#Preview {
    UserProfile()
}
