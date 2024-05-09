//
//  beginning.swift
//  socialMediaApp
//
//  Created by StudentAM on 4/25/24.
//

import SwiftUI

//creating a struct so i can store what the user set as their password and username

struct loggin{
    var password: String
    var username: String
}

struct user{
    var fName: String
    var lName: String
    var usernamee: String
    var age : String
    var password : String
    var profileImage : String
    var bio: String
}



struct beginning: View {
////    creating a variable to keep the user logged in
//    @State var loggedIn: [user] = []
////    adding accounts to it 
//    @State var multipleAccounts = [
//    user(fName: "Ximena", lName: "Araiza", usernamee: "Xime", age: "17", password: "Ximena", profileImage: "pfp5", bio: "🎀"),
//    user(fName: "Jon", lName: "Monsivais", usernamee: "Jon_dmd", age: "17", password: "Jon", profileImage: "pfp2", bio: "🐵")
//    ]
    @State var username1: String = ""
    @State var pswrd : String = ""
//    a bool that will determine if the password and username are the same
    @State var isLoaded : Bool = false
    
    @Binding var profilePic : String
    @Binding var loggedIn : [user]
    @Binding var multipleAccounts : [user]
    
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
                        Text("Username:")
//                        whatever they type will be added to the username1 variable
                        TextField("Type here...",text: $username1)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                    }
                    HStack{
                        Text("Password:")
                        //                    securefield makes like the dots appear like to hide the passsword
//                        whatever they type will be addded to the pswrd variable
                        SecureField("Enter a password", text: $pswrd)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                        
                    }
                    HStack{
                            Button("Enter", action: {
//                                this button will run the function to compare if the password and username are correct
                                revisar()

                            })
                            .font(.system(size:25))
                            .frame(width:100, height:80)
                            .background(Color.pink.opacity(0.25))
                            .cornerRadius(9)
                            .foregroundColor(.black)
                             
                            
                            
                            //                making a navigation link that will take you to the next page or the home page
                            NavigationLink(destination:ContentView(profilePic: $profilePic, username1: $username1,loggedIn: $loggedIn).navigationBarBackButtonHidden(true),isActive: $isLoaded){
//                              emptyview makes nothing appear basically like an empty and invisable link
                                EmptyView()
                            }
                            
                            Spacer()
                                .frame(width: 30)
//                        NavigationLink(destination:createAcc(multipleAccounts: $multipleAccounts, loggedIn:$loggedIn).navigationBarBackButtonHidden(true), label: {
//                                Text("Create Account")
//                                    .font(.system(size:25))
//                                    .frame(width:120, height:80)
//                                    .background(Color.pink.opacity(0.25))
//                                    .cornerRadius(9)
//                                    .foregroundColor(.black)
//                            })
                        }
                    }
                }
                
            }
        }
        func revisar(){
            print(multipleAccounts.count)
        if !username1.isEmpty && !pswrd.isEmpty{
            for i in multipleAccounts.indices{
                print(multipleAccounts[i].usernamee)
                if multipleAccounts[i].usernamee == username1 && multipleAccounts[i].password == pswrd{
                    
                    loggedIn.append(multipleAccounts[i])
                    print("correct")
                    isLoaded = true
                }
            }
            }
            
        }
    }


#Preview {
    beginning( profilePic: .constant(""), loggedIn: .constant([]), multipleAccounts: .constant([]))
}
