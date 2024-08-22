//
//  ReusableProfileContent.swift
//  Recipe App
//
//  Created by Surath Chathuranga on 2023-06-13.
//

import SwiftUI
import SDWebImageSwiftUI

struct ReusableProfileContent: View {
    var user: User
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack{
                VStack(spacing: 12){
                    WebImage(url: user.userProfileURL).placeholder{
                        Image("NullProfile")
                            .resizable()
                    }
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 160, height: 160)
                    .clipShape(Circle())

                    VStack(alignment: .leading, spacing: 6) {
                        Text("User Name:")
                            .font(
                                .custom("AmericanTypewriter",fixedSize: 22)
                                .weight(.heavy))
                            .foregroundColor(.pink)
                        Text(user.username)
                            //.foregroundColor(.gray)
                        
                        Text("Email:")
                            .font(
                                .custom("AmericanTypewriter",fixedSize: 22)
                                .weight(.heavy))
                            .foregroundColor(.pink)
                        Text(user.userEmail)
                            //.foregroundColor(.gray)
                        
                        Text("Bio:")
                            .font(
                                .custom("AmericanTypewriter",fixedSize: 22)
                                .weight(.heavy))
                            .foregroundColor(.pink)
                        Text(user.userBio)
                            //.foregroundColor(.gray)

                        if let bioLink = URL(string: user.userBioLink){
                            Link(user.userBioLink, destination: bioLink)
                                .font(.callout)
                                .tint(.blue)
                                .lineLimit(1)
                        }
                    }
                    .hAlign(.leading)
                }

            }
            .padding(15)
        }
    }
}

