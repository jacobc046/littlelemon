//
//  Hero.swift
//  Restaurant
//
//  Created by Jacob Croket on 6/28/24.
//

import SwiftUI

struct Hero: View {
    var body: some View {
        VStack {
            VStack {
                Text("Little Lemon")
                    .font(.custom("AmericanTypewriter", size: 42))
                    .foregroundStyle(Color.primary3)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 15)
                    .padding(.top, 10)
                
                Text("Chicago")
                    .font(.custom("AmericanTypewriter", size: 24))
                    .foregroundStyle(Color.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 15)
                
                HStack {
                    Text("We are a family owned Mediterranean resaurant focued on traditional recipies served with a modern twist.")
                        .foregroundStyle(Color.white)
                        .fixedSize(horizontal: false, vertical: true)
                    
                    Image("Hero image")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 10)))
                }
                .padding(.init(top: 0, leading: 15, bottom: 15, trailing: 15))
            }
            .background(Color.primary1)
        }
    }
}

#Preview {
    Hero()
}
