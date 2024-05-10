//
//  tabPage.swift
//  socialMediaApp
//
//  Created by StudentAM on 5/3/24.
//

import SwiftUI

//creating a a struct were we will have a the people and their post
struct people{
    var pfp : String
    var userName: String
    var newPic: String
}

//struct for the posts
struct posts{
    @State var username : String
    @State var likes : Int
    @State var caption : String
    @State var picturesss : String
}




struct tabPage: View {

//    private bc we dont want any other file to strore data in here
//    and its at one bc thats where the tab is gonna start at
    
    @State private var tabSelection: Int = 1
    
    //        creating an array were imma story the pics,caption,likes,and username used for stories
    //        technically im not storing the images themselves but the names of the images that i will then use them in forloops
    @State var publicaciones = [
       posts(username: "RauwRauw", likes: (54670), caption: "Yo seré muchas cosas, pero nunca infiel", picturesss: "rauwIG"),
     posts(username: "Chivas", likes: (98456), caption: "Dale Rebaño", picturesss: "chivasIGpost"),
       posts(username: "kevinAMF", likes: (2300), caption: "saquen las hypnotic", picturesss: "kevinAMF"),
    posts(username: "elChino", likes: (36755), caption: "El Chino Pacasss", picturesss: "chinoPacas"),
    posts(username: "gabito_54", likes: (93213), caption: "te mire contenta en otra parte", picturesss: "gabitoBallastero" ),
    posts(username: "Ulta", likes: (342), caption: "Dont forget to check out this sale!", picturesss: "ultaStore"),
    posts(username: "juniorH", likes: (1000000), caption: "La letra muda", picturesss: "JuniorH"),
    posts(username: "CarinlLeon", likes: (156000), caption: "Pa que vean como ruje el Leon", picturesss: "Carinleon" ),
    ]
    
    //       creating an array were imma story the images,pfp,and username used for stories
    //       technically im not storing the images themselves but the names of the images that i will then use them in forloops
    
    @State var personas = [
        people(pfp: "rauwPost", userName: "RauwRauw", newPic: "rauwStory"),
        people(pfp: "chatoPFP", userName: "ChatoMP", newPic: "chatoStory"),
        people(pfp: "JOP", userName: "Jesus Ortiz", newPic: "jopStory"),
        people(pfp: "karolG", userName: "La Bichota", newPic: "karolGStory")
    ]
    @Binding var profilePic : String
    @Binding var username1: String
    @Binding var loggedIn : [user]
    
    var body: some View {
        

        
        //            the tabview needs to be a file by itself
            TabView(selection: $tabSelection){
                //                takes you to the home page which is the beggining one
                Home(personas:$personas, publicaciones:$publicaciones)
                    .tabItem {
                        Image(systemName: "house.fill")
                            .foregroundStyle(Color.pink, Color.pink)
                        Text("Home")
                    }
                       .tag(1)
                //                takes you to the post page which lets you upload images
                post(tabSelection:$tabSelection, publicaciones: $publicaciones, personas: $personas, profilePic:$profilePic, loggedIn:$loggedIn)
                    .tabItem {
                        Image(systemName: "2.square.fill")
                            .foregroundStyle(Color.pink, Color.pink)
                        Text("Post")
                    }
                    .tag(2)
                
                //                takes you to the message page where you can text
                message()
                    .tabItem {
                        Image(systemName: "2.square.fill")
                            .foregroundStyle(Color.pink, Color.pink)
                        Text("Message")
                    }
                    .tag(3)
                //                takes you to the account page where you can text
                account(profilePic: $profilePic, username1:$username1, loggedIn: $loggedIn,publicaciones: $publicaciones,personas:$personas)
                    .tabItem {
                        Image(systemName: "2.square.fill")
                            .foregroundStyle(Color.pink, Color.pink)
                        Text("Account")
                    }
                    .tag(4)
       }
    }
}

#Preview {
    tabPage(profilePic: .constant(""),username1: .constant(""),loggedIn: .constant([]))
}
