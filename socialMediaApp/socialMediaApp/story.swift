//
//  story.swift
//  socialMediaApp
//
//  Created by StudentAM on 4/23/24.
//

import SwiftUI

struct story: View {
//    this variable is going to store the name of the image
    var image : String
    var user: String
    var newStory: String
    var isFlipped: Bool
    
    var body: some View {
      
        
    VStack{
        ZStack{
//if is flipped is true then like change it to the new story
//            it always starts on false
            if isFlipped == true{
                VStack{
                    Image(newStory)
                        .resizable()
                        .cornerRadius(100)
                        .frame(width:150, height:170)
                    Text(user)
                }
                
            }else{
                VStack{
                    Image(image)
                        .resizable()
                        .cornerRadius(100)
                        .frame(width:150, height:170)
                    Spacer()
                        .frame(height:30)
                    Text(user)
                        
                }
            }
          }

//        
//        Text(user)
        }
        
    }
}

#Preview {
    story(image: "rosaliaNRauw", user: "laRosalia23",newStory:"acc",isFlipped: false)
}
