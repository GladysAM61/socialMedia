//
//  message.swift
//  socialMediaApp
//
//  Created by StudentAM on 4/26/24.
//


import SwiftUI

//creating a struct to make it easier and like just make it into like an array of messages kind of
//it will contain the pfp and the text message

struct mensaje{
    var pfp: String
    var user: String
    var texts : [String]
}


struct message: View {
    @State var textMessages = [
        
         mensaje(pfp: "chatoPFP", user: "ChatoMP", texts : ["Whatd you think of our new song?", "Its really good!", "La neta si","I feel like it will trend", "Yea I lowk think the same"])
    ]
    
    var body: some View {
        NavigationView{
        ZStack{
            Image("babyPink")
                .resizable()
            ScrollView{
//                creating like a text view for each message
                ForEach(textMessages.indices, id:\.self){ i in
                    VStack{
                        HStack{
                            Image(textMessages[i].pfp)
                                .resizable()
                                .frame(width:60, height: 60)
                                .cornerRadius(100)
                            Text(textMessages[i].user)
                        }
                        //                    making them a navigation link where they could text
                        //                    textmessages i is like the first one of the array
                        NavigationLink(destination: texting(profilePic: textMessages[i].pfp, nombreDeUser: textMessages[i].user, conversations: textMessages[i].texts), label: {
                            HStack{
                                Text(textMessages[i].texts[4])
                                Text("-->")
                            }
                                .frame(width: 300,height:40)
                                .background(Color.white)
                        })
                        
                    }
                }
            }
           }
        }
    }
}

#Preview {
    message()
}
