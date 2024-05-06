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
                        
                        //                making a navigation link that will take you to the home page
                        NavigationLink(destination:ContentView().navigationBarBackButtonHidden(true),isActive: $IsLoaded){
//                              emptyview makes nothing appear basically like an empty and invisable link
                            EmptyView()
                        }
                    }
                    
                    Text("Story:")
                    HStack{
                        TextField("Amount of hours..",text: $hrs)
                        Button(action: {addPost()}, label: {
                            Text("Post")
                        })
                             .foregroundStyle(Color.black)
                        
                        //                making a navigation link that will take you to the home page
                        NavigationLink(destination:ContentView().navigationBarBackButtonHidden(true),isActive: $IsLoaded){
//                              emptyview makes nothing appear basically like an empty and invisable link
                            EmptyView()
                        }
                    }
                }
            }
        }
    }
//    function to append or add the stories to the home page
    func addPost(){
        var newPost: posts = posts(username: "", likes: (0), caption: captionNew, picturesss: imagee)
        publicaciones.append(newPost)
        IsLoaded = true
    }
    
//    functon to append the story
    func addStory(){
        var newStory: people = people(pfp: "", userName: "", newPic: imagee)
        personas.append(newStory)
        IsLoaded = true
    }
    
}

#Preview {
    post2(imagee: "2",publicaciones:.constant([]),personas:.constant([])
    )
}
