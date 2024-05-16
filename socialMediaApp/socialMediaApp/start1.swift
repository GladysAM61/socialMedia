//
//  start1.swift
//  socialMediaApp
//
//  Created by StudentAM on 5/9/24.
//

import SwiftUI

struct start1: View {
    
    //    creating a variable to keep the user logged in
        @State var loggedIn: [user] = []
    //    adding accounts to it
        @State var multipleAccounts = [
        user(fName: "Ximena", lName: "Araiza", usernamee: "Xime", age: "17", password: "Ximena", profileImage: "pfp5", bio: "🎀"),
        user(fName: "Jon", lName: "Monsivais", usernamee: "Jon_dmd", age: "17", password: "Jon", profileImage: "pfp2", bio: "🐵")
        ]
    
    
    
    var body: some View {
        NavigationView{
            ZStack{
                Image("babyPink")
                    .resizable()
                VStack{
                    Image("elLogo")
                        .resizable()
                        .frame(width:220, height: 220)
                        .cornerRadius(90)
                    Text("Socializations")
                        .font(.system(size:30))
                    Spacer()
                        .frame(height:70)
                    HStack{
//                        if you clic already have an account, that means that your account is in the multiple accounts array
                        Text("Already have an account?")
//                        binding or passing over the logged in and multiple accounts array
                        NavigationLink(destination: beginning(profilePic: .constant(""),loggedIn: $loggedIn, multipleAccounts: $multipleAccounts).navigationBarBackButtonHidden(true), label: {
                            Text("click here")
                                .font(.system(size:14))
                               .foregroundColor(.black)
                               .frame(width:80,height: 30)
                               .background(Color.white)
                               .cornerRadius(80)
                        })
                    }
                    
                    HStack{
                        Text("Don't have an account?")
                        //                        binding or passing over the logged in and multiple accounts array
                        NavigationLink(destination: createAcc(multipleAccounts: $multipleAccounts, loggedIn: $loggedIn).navigationBarBackButtonHidden(true), label: {
                            Text("click here")
                                .font(.system(size:14))
                                .foregroundColor(.black)
                                .frame(width:80,height: 30)
                                .background(Color.white)
                                .cornerRadius(80)
                        })
                    }
                }
            }
        }
    }
}

#Preview {
    start1()
}
