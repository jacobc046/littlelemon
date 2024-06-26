//
//  UserProfile.swift
//  Restaurant
//
//  Created by Jacob Croket on 6/26/24.
//

import SwiftUI

struct UserProfile: View {
    let firstName = UserDefaults.standard.string(forKey: kFirstName)
    let lastName = UserDefaults.standard.string(forKey: kLastName)
    let email = UserDefaults.standard.string(forKey: kEmail)
    
    //This will automatically reference the presentation environment in SwiftUI which will allow you to reach the navigation logic.
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            Text("Personal information")
            Image("profile-image-placeholder")
            Text(firstName ?? "")
            Text(lastName ?? "")
            Text(email ?? "")
            Button(action: {
                UserDefaults.standard.set(false, forKey: kIsLoggedIn)
                dismiss()
            }, label: { Text("Logout") })
            Spacer()
        }
    }
}

#Preview {
    UserProfile()
}
