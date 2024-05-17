//
//  texting.swift
//  socialMediaApp
//
//  Created by StudentAM on 4/30/24.
//

import SwiftUI

struct texting: View {
    @State var profilePic: String = ""
    @State var nombreDeUser: String = ""
    @State var conversations: [String] = []
    @State var texttt : String = ""
    var body: some View {
        ZStack{
            Image("babyPink")
                .resizable()
            VStack{
                HStack{
//                    displays the users profile picture as well as their username
                    Image(profilePic)
                        .resizable() 
                        .frame(width:80,height:80)
                        .cornerRadius(500)
                    Text(nombreDeUser)
                        .font(.system(size:30))
                }
                VStack{
//                    for each conversation,conversations is an array of strings so basically for each string, make it have a frame and if its a even number make it be on the left, if it even make it be on the right
                    ForEach(conversations.indices,id: \.self){ i in
                        HStack(){
                            if i % 2 == 1{
                                Spacer()
                            }
                            
                            Text(conversations[i])
                                .frame(width:300,height:60)
                                .multilineTextAlignment(.leading)
                                .background(Color.white)
                            
                            if i % 2 == 0{
                                Spacer()
                            }
                        }
                        
                        
                    }
                    HStack{
                        TextField("" ,text: $texttt)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                        
                        Button("Send", action: {
                            conversations.append(texttt)
//                            making the var texttt be empty so when you send the text then it wil be an empty textfield
                            texttt = ""
                        })
                    }
                }
            }
          }
        }
        
    }

#Preview {
    texting(profilePic: "rauwIG", nombreDeUser: "ElZorro", conversations: ["Holaaa", "Holaa", "Lista para el tour de Playa Saturno?👀", "Obvio que siii............12344567988777788","Ok puess"])
}
