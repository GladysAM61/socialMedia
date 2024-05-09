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
                        TextField("Type your caption here..",text: $captionNew)
                        Button(action: {addPost()}, label: {
                            Text("Post")
                        })
                             .foregroundStyle(Color.black)
                    }
                    
                    Text("Story:")
                    HStack{
                        TextField("Type the number of hours",text: $hrs)
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
        var newPost: posts = posts(username: loggedIn[0].usernamee , likes: (0), caption: captionNew, picturesss: imagee)
        publicaciones.append(newPost)
        tabSelection = 1
        IsLoaded = true
    }
    
//    functon to append the story
    func addStory(){
        print(personas.count)
        var newStory: people = people(pfp: loggedIn[0].profileImage, userName: loggedIn[0].usernamee, newPic: imagee)
        personas.append(newStory)
        print(personas)
        tabSelection = 2
        IsLoaded = true
        
    }
    
}

#Preview {
    post2(imagee:"2",publicaciones:.constant([]),personas:.constant([]), tabSelection:.constant(1), /*multipleAccounts: .constant([])*/profilePic: .constant("5"),loggedIn: .constant([]))
}
