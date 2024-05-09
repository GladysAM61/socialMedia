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
    
    
    var body: some View {
        NavigationView{
            ZStack{
                Image("babyPink")
                    .resizable()
                VStack{
                    HStack{
                        
                        Image(profilePic)
                            .resizable()
                            .frame(width: 100,height:100)
                            .cornerRadius(50)
                        Spacer()
                            .frame(width:50)
                        Text(username1)
                            .font(.system(size: 30))
                    }
                    Text("bio")
                    Text("posts")
                    Text("accInfo")
                    
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
    account(/*loggedIn: []*/profilePic: .constant("pfp4"), username1: .constant("you"),loggedIn: .constant([]))
}
