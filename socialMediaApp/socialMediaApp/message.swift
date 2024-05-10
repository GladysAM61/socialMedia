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
        
         mensaje(pfp: "chatoPFP", user: "ChatoMP", texts : ["Whatd you think of our new song?", "Its really good!", "La neta si","I feel like it will trend", "Yea I lowk think the same"]),
         mensaje(pfp: "EugenioDerbez", user: "Eugenio_Derbez", texts:["Heyyy","Oye are you actually the voice actor of Donkey from Shrek?", "Yes! I also appear in plenty other movies too", "Oh yea my favorite one is probably instruction not included", "Thats a fan favorite!"]),
         mensaje(pfp: "badBunny", user: "elConejoMalo", texts:["Estamos bien","sobran los billetes de 100", "No hay nada mal, estamos bien, está todo bien", "El dinero me llueve", "En la cuenta un par de ceros","Y empezamos desde cero","Hoy me levanté contento","hoy me levanté feliz"]),
         mensaje(pfp: "ivanCornejo", user: "IvanCornejo16", texts:["Heyyy i was wondering if you were a fan of my music?","Hi Ivan yea i love youre music", "Ok well in that case i was wondering if you wanted to be in our music video?", "OMG YES I WOULD LOVE TOO!", "Ok then thats good to hear ill text you with more info"]),
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
//                        the arroe will not be hidden so they could go back
                        NavigationLink(destination: texting(profilePic: textMessages[i].pfp, nombreDeUser: textMessages[i].user, conversations: textMessages[i].texts), label: {
                            HStack{
                                Text(textMessages[i].texts[4])
                            }
                                .frame(width: 300,height:40)
                                .foregroundColor(.black)
                                .background(Color.white)
                                .cornerRadius(10)
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
