//
//  ContentView.swift
//  socialMediaApp
//
//  Created by StudentAM on 4/22/24.
//

import SwiftUI


struct ContentView: View {
    var body: some View {

//            the tabview needs to be a file by itself
            TabView{
//                takes you to the home page which is the beggining one
                Home()
                    .tabItem {
                        Image(systemName: "2.square.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                        Text("Home")
                    }
//                takes you to the post page which lets you upload images
                post()
                    .tabItem {
                        Image(systemName: "2.square.fill")
                        Text("Post")
                    }

//                takes you to the message page where you can text
                message()
                    .tabItem {
                        Image(systemName: "2.square.fill")
                        Text("Message")
                    }
//                takes you to the account page where you can text
                account()
                    .tabItem {
                        Image(systemName: "2.square.fill")
                        Text("Account")
                    }

            }
        }
}

#Preview {
    ContentView()
}
