//
//  Home.swift
//  Restaurant
//
//  Created by Jacob Croket on 6/26/24.
//

import SwiftUI

struct Home: View {
    var body: some View {
        TabView {
            Menu()
                .tabItem { Label("Menu", systemImage: "list.dash") }
            UserProfile()
                .tabItem { Label("Profile", systemImage: "square.and.pencil")}
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    Home()
}
