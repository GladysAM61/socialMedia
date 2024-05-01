//
//  Home.swift
//  socialMediaApp
//
//  Created by StudentAM on 4/29/24.
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


struct Home: View {
    @State var storyFlipped: [Bool] = Array(repeating: false, count: 4)
    @State var historia: Int = 0
    var body: some View {
        NavigationView{
            
            //        creating an array were imma story the images,pfp,and username used for stories
            //        technically im not storing the images themselves but the names of the images that i will then use them in forloops
            
            @State var personas = [
                people(pfp: "rauwPost", userName: "RauwRauw", newPic: "rauwStory"),
                people(pfp: "chatoPFP", userName: "ChatoMP", newPic: "chatoStory"),
                people(pfp: "JOP", userName: "Jesus Ortiz", newPic: "jopStory"),
                people(pfp: "karolG", userName: "La Bichota", newPic: "karolGStory")
            ]
            
            //        creating an array were imma story the pics,caption,likes,and username used for stories
            //        technically im not storing the images themselves but the names of the images that i will then use them in forloops
            @State var publicaciones = [
               posts(username: "RauwRauw", likes: (54670), caption: "Yo seré muchas cosas, pero nunca infiel", picturesss: "rauwIG"),
             posts(username: "Chivas", likes: (98456), caption: "Dale Rebaño", picturesss: "chivasIGpost"),
               posts(username: "kevinAMF", likes: (2300), caption: "saquen la sipnotic", picturesss: "kevinAMF"),
            posts(username: "elChino", likes: (36755), caption: "El Chino Pacasss", picturesss: "chinoPacas"),
            posts(username: "gabito_54", likes: (93213), caption: "te mire contenta en otra parte", picturesss: "gabitoBallastero" ),
            posts(username: "Ulta", likes: (342), caption: "Dont forget to check out this sale that you do not want to miss!", picturesss: "ultaStore"),
            posts(username: "juniorH", likes: (1000000), caption: "La letra muda", picturesss: "JuniorH"),
            posts(username: "CarinlLeon", likes: (156000), caption: "Pa que vean como ruje el Leon", picturesss: "Carinleon" ),
            ]

            
            
            
            
            ZStack{
                Image("babyPink")
                    .resizable()
                VStack {
                    ScrollView(.horizontal){
                        HStack{
//                            for each like person in the array make the story view appear
                            ForEach(personas.indices, id:\.self){ index in
                                Button(action: {flip(index: index)}, label: {
                                    story(image: personas[index].pfp, user: personas[index].userName, newStory: personas[index].newPic, isFlipped: storyFlipped[index])
                                })
                                .foregroundColor(.black)
                            }
                        }
                    }
                    ScrollView(.vertical){
//                       for loop to go trhough the publicaciones arry and make a post for each person
                        ForEach(publicaciones.indices, id:\.self){ i in
                            story2(userName: publicaciones[i].username, hearts: publicaciones[i].likes, theCaption: publicaciones[i].caption,foto: publicaciones[i].picturesss)
                        }
                    }
                    
                    
                    
                    
                }
            }
        }
    }
    
    
//    this function will help reveal like the story 
    func flip(index:Int){
        historia = index
        storyFlipped[historia] = true
    }
}


#Preview {
    Home()
}
