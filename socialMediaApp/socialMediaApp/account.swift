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
                    ForEach(personas.indices){i in
                        if personas[i].userName == loggedIn[0].usernamee{
                            HStack{
                                ScrollView(.horizontal){
                                    story(image: personas[i].pfp, user: personas[i].userName, newStory: personas[i].newPic,isFlipped: true)
                                        .frame(width:100,height:100)
                                }
                            }
                        }
                    }
                    
                    ForEach(publicaciones.indices){i in
                        if publicaciones[i].username == loggedIn[0].usernamee{
                            HStack{
                                ScrollView(.horizontal){
                                    story2(userName: publicaciones[i].username, hearts: publicaciones[i].likes, theCaption: publicaciones[i].caption,foto: publicaciones[i].picturesss)
//                                        .resizable()
                                        .frame(width:100,height:100)
                                }
                            }
                        }
                    }
                    
                    
                    NavigationLink(destination: AccInfo(), label: {
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
