//
//  post2.swift
//  socialMediaApp
//
//  Created by StudentAM on 5/2/24.
//

import SwiftUI

struct post2: View {
    @State var imagee: String = ""
    @State var captionNew: String = ""
    @State var hrs: String = ""
    @Binding var publicaciones: [posts]
    @Binding var personas: [people]
    @State var IsLoaded : Bool = false
    @Binding var tabSelection: Int
//    @Binding var multipleAccounts: [user]
    @Binding var profilePic : String
    
    @Binding var loggedIn : [user]
    
   
    
    var body: some View {
        NavigationView{
            ZStack{
                
                Image("babyPink")
                    .resizable()
                VStack{
                    Image(imagee)
                        .resizable()
                        .frame(width:220 ,height: 220)
                    Text("Post:")
                    HStack{
//                       whatever the user types will be the caption and then it will stored into the caption into posts
                        TextField("Type your caption here..",text: $captionNew)
//                        when they click the button it will take them into the home page and append the post to the publicaciones array
                        Button(action: {addPost()}, label: {
                            Text("Post")
                        })
                             .foregroundStyle(Color.black)
                    }
                    
                    Text("Story:")
                    HStack{
                        TextField("Type the number of hours",text: $hrs)
                        //                        when they click the button it will take them into the posting page and append the post to the story array
                        Button(action: {addStory()}, label: {
                            Text("Story")
                        })
                             .foregroundStyle(Color.black)
                    }
                }
            }
        }
    }
//    function to append or add the stories to the home page
    func addPost(){
//        creating a new variable using a post struct
//        using this to append it to the publicaciones array so it will pop up with the post in the home page
        var newPost: posts = posts(username: loggedIn[0].usernamee , likes: (0), caption: captionNew, picturesss: imagee)
        publicaciones.append(newPost)
        tabSelection = 1
        IsLoaded = true
    }
    
//    functon to append the story
    func addStory(){
        //        creating a new variable using a story,people, struct
        //        using this to append it to the personas array so it will pop up with the story in the home page
        var newStory: people = people(pfp: loggedIn[0].profileImage, userName: loggedIn[0].usernamee, newPic: imagee)
        personas.append(newStory)
        tabSelection = 2
        IsLoaded = true
        
    }
    
}

#Preview {
    post2(imagee:"2",publicaciones:.constant([]),personas:.constant([]), tabSelection:.constant(1), /*multipleAccounts: .constant([])*/profilePic: .constant("5"),loggedIn: .constant([]))
}
