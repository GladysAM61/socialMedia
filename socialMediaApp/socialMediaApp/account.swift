//
//  account.swift
//  socialMediaApp
//
//  Created by StudentAM on 4/26/24.
//

import SwiftUI

struct account: View {
//    @Binding var loggedIn: [user]
    @Binding var profilePic : String
    @Binding var username1: String
    @Binding var loggedIn : [user]
    @Binding var publicaciones: [posts]
    @Binding var personas : [people]
    
    
    var body: some View {
        NavigationView{
            ZStack{
                Image("babyPink")
                    .resizable()
                VStack{
//                    for each loop to go through through the logged in array and i use it to display the users profile picture,their username, and their bio
                        ForEach(loggedIn.indices){i in
                            HStack{
                                Image(loggedIn[0].profileImage)
                                    .resizable()
                                    .frame(width: 100,height:100)
                                    .cornerRadius(50)
                                Spacer()
                                    .frame(width:50)
                                Text(loggedIn[0].usernamee)
                                    .font(.system(size: 30))
                            }
                            VStack{
                                Text(loggedIn[0].bio)
                                    .font(.system(size: 20))
                            }
                    }
                   
                ScrollView(.horizontal){
                    HStack(spacing:60){
//                        for loop to display their stories
                        ForEach(personas.indices, id: \.self){i in
//                            going through the stories array and if the username from the story matches the users username that means its their post so they could display it
                           if personas[i].userName == loggedIn[0].usernamee{
                                    story(image: personas[i].pfp, user: personas[i].userName, newStory: personas[i].newPic, isFlipped: true)
                                        .frame(width:100,height:160)
                                }
                            }
                        }
                }.frame(width:.infinity,height: 250)
                    
               Spacer()
                        .frame(height:5)
                    
                    
            ScrollView(.horizontal){
                HStack{
                    ForEach(publicaciones.indices, id: \.self){i in
                        //                            going through the posts array and if the username from the posts matches the users username that means its their post so they could display it
                        if publicaciones[i].username == loggedIn[0].usernamee{
                                    story2(userName: publicaciones[i].username, hearts: publicaciones[i].likes, theCaption: publicaciones[i].caption,foto: publicaciones[i].picturesss)
//                                        .resizable()
                                        .frame(width:100,height:160)
                                }
                            }
                        }
            }.frame(width:.infinity,height: 250)
//                    taking them to the other page
                    
                    NavigationLink(destination: AccInfo(loggedIn: $loggedIn, publicaciones: $publicaciones, personas:$personas), label: {
                        Text("More Account Information")
                    })
                    .foregroundColor(.black)
                    .frame(width:250,height: 50)
                    .background(Color.white)
                    .cornerRadius(80)
                }
            }
        }
    }
}

#Preview {
    account(/*loggedIn: []*/profilePic: .constant("pfp4"), username1: .constant("you"),loggedIn: .constant([]),publicaciones: .constant([]), personas: .constant([]))
}
