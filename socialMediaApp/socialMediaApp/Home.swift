//
//  Home.swift
//  socialMediaApp
//
//  Created by StudentAM on 4/29/24.
//

import SwiftUI


struct Home: View {
    @State var storyFlipped: [Bool] = Array(repeating: false, count: 4)
    @State var historia: Int = 0
    @Binding var personas : [people]
    @Binding var publicaciones : [posts]

    var body: some View {
        NavigationView{
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
    Home(personas: .constant([]), publicaciones: .constant([]))
}
