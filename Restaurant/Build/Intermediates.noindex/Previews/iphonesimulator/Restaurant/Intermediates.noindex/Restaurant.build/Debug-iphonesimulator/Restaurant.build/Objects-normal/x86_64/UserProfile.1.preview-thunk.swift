@_private(sourceFile: "UserProfile.swift") import Restaurant
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension Checkbox {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Capstone/littlelemon/Restaurant/Restaurant/UserProfile.swift", line: 132)
        HStack {
            Button(action: {
                isOn.toggle()
            }, label: {
                Image(systemName: "\(isOn ? __designTimeString("#8794.[3].[3].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[1].value.arg[0].value.then", fallback: "checkmark.square.fill") : __designTimeString("#8794.[3].[3].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[1].value.arg[0].value.else", fallback: "square"))")
                    .symbolEffect(.bounce, value: isOn)
            })
            .onChange(of: isOn, {
                UserDefaults.standard.set(isOn, forKey: key)
            })
            Text(notification)
        }
        .foregroundStyle(Color.primary1)
        .padding(.top, __designTimeInteger("#8794.[3].[3].property.[0].[0].modifier[1].arg[1].value", fallback: 2))
        .padding(.bottom, __designTimeInteger("#8794.[3].[3].property.[0].[0].modifier[2].arg[1].value", fallback: 5))
    
#sourceLocation()
    }
}

extension InformationField {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Capstone/littlelemon/Restaurant/Restaurant/UserProfile.swift", line: 114)
        Text(fieldTitle)
            .font(.footnote)
        TextField(fieldTitle, text: $text)
            .textFieldStyle(.roundedBorder)
            .keyboardType(keyboardType)
            .padding(.bottom, __designTimeInteger("#8794.[2].[4].property.[0].[1].modifier[2].arg[1].value", fallback: 15))
            .onChange(of: text, {
                UserDefaults.standard.set(text, forKey: key)
            })
    
#sourceLocation()
    }
}

extension UserProfile {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Capstone/littlelemon/Restaurant/Restaurant/UserProfile.swift", line: 23)
        NavigationStack {
            VStack {
                HStack {
                    Image(profilePicture)
                        .resizable()
                        .scaledToFit()
                        .frame(height: __designTimeInteger("#8794.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value", fallback: 100))
                        .clipShape(Circle())
                        .onChange(of: profilePicture, {
                            UserDefaults.standard.set(profilePicture, forKey: kProfilePicture)
                        })
                    
                    Button(action: {
                        profilePicture = __designTimeString("#8794.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0]", fallback: "Profile")
                    }, label: {
                        Text(__designTimeString("#8794.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Change"))
                            .frame(width: __designTimeInteger("#8794.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[0].arg[0].value", fallback: 80), height: __designTimeInteger("#8794.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[0].arg[1].value", fallback: 40))
                            .foregroundStyle(Color.secondary3)
                            .background(Color.primary1)
                            .clipShape(RoundedRectangle(cornerRadius: __designTimeInteger("#8794.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[3].arg[0].value.arg[0].value", fallback: 5)))
                    })
                    .padding(__designTimeInteger("#8794.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].modifier[0].arg[0].value", fallback: 10))
                    
                    Button(action: {
                        profilePicture = __designTimeString("#8794.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].[0]", fallback: "Default Profile Picture")
                    }, label: {
                        Text(__designTimeString("#8794.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[2].arg[1].value.[0].arg[0].value", fallback: "Remove"))
                            .frame(width: __designTimeInteger("#8794.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[2].arg[1].value.[0].modifier[0].arg[0].value", fallback: 80), height: __designTimeInteger("#8794.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[2].arg[1].value.[0].modifier[0].arg[1].value", fallback: 40))
                            .foregroundStyle(Color.primary1)
                            .border(Color.primary1, width: __designTimeInteger("#8794.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[2].arg[1].value.[0].modifier[2].arg[1].value", fallback: 2))
                    })
                }
                
                //user information fields
                VStack(alignment: .leading) {
                    InformationField(fieldTitle: __designTimeString("#8794.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "First Name"), text: firstName, key: kFirstName, keyboardType: .default)
                    InformationField(fieldTitle: __designTimeString("#8794.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].arg[0].value", fallback: "Last Name"), text: lastName, key: kLastName, keyboardType: .default)
                    InformationField(fieldTitle: __designTimeString("#8794.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[2].arg[0].value", fallback: "Email"), text: email, key: kEmail, keyboardType: .emailAddress)
                }
                .padding(__designTimeInteger("#8794.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[0].arg[0].value", fallback: 10))
                
                
                //email prefrences
                VStack(alignment: .leading) {
                    Text(__designTimeString("#8794.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[1].value.[0].arg[0].value", fallback: "Email notifications"))
                        .font(.title3)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Checkbox(isOn: $orderStatusNotifications, notification: __designTimeString("#8794.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[1].value.[1].arg[1].value", fallback: "Order statuses"), key: kOrderStatuses)
                    Checkbox(isOn: $passwordChangeNotifications, notification: __designTimeString("#8794.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[1].value.[2].arg[1].value", fallback: "Password hanges"), key: kPasswordChanges)
                    Checkbox(isOn: $specialOfferNotifications, notification: __designTimeString("#8794.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[1].value.[3].arg[1].value", fallback: "Special offers"), key: kSpecialOffers)
                    Checkbox(isOn: $newsletterNotifications, notification: __designTimeString("#8794.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[1].value.[4].arg[1].value", fallback: "Newsletter"), key: kNewsletter)
                }
                .padding(__designTimeInteger("#8794.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[2].modifier[0].arg[0].value", fallback: 15))
                
                
                //logout
                Button(action: {
                    UserDefaults.standard.set(__designTimeBoolean("#8794.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[0].modifier[0].arg[0].value", fallback: false), forKey: kIsLoggedIn)
                    dismiss()
                }, label: { 
                    Text(__designTimeString("#8794.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].arg[0].value", fallback: "Log out"))
                        .frame(width: __designTimeInteger("#8794.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].modifier[0].arg[0].value", fallback: 350), height: __designTimeInteger("#8794.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].modifier[0].arg[1].value", fallback: 40))
                        .foregroundStyle(Color.black)
                        .background(Color.primary3)
                        .clipShape(RoundedRectangle(cornerRadius: __designTimeInteger("#8794.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].modifier[3].arg[0].value.arg[0].value", fallback: 15)))
                })
                .padding(__designTimeInteger("#8794.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[3].modifier[0].arg[0].value", fallback: 10))
                
                Spacer()
            }
            .navigationTitle(__designTimeString("#8794.[1].[9].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: "Personal Information"))
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {
                Button(action: {
                    dismiss()
                }, label: {
                    Text(__designTimeString("#8794.[1].[9].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Done"))
                        .foregroundStyle(Color.cyan)
                })
            })
        }
    
#sourceLocation()
    }
}

import struct Restaurant.UserProfile
import struct Restaurant.InformationField
import struct Restaurant.Checkbox
#Preview {
    UserProfile()
}



