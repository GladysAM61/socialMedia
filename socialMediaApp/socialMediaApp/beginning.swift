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
}



struct beginning: View {
//    creating a
    @State var multipleAccounts: [user] = []
    @State var username1: String = ""
    @State var pswrd : String = ""
//    a bool that will determine if the password and username are the same
    @State var isLoaded : Bool = false
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
                            NavigationLink(destination:ContentView().navigationBarBackButtonHidden(true),isActive: $isLoaded){
//                              emptyview makes nothing appear basically like an empty and invisable link
                                EmptyView()
                            }
                            
                            Spacer()
                                .frame(width: 30)
                            NavigationLink(destination:createAcc().navigationBarBackButtonHidden(true), label: {
                                Text("Create Account")
                                    .font(.system(size:25))
                                    .frame(width:120, height:80)
                                    .background(Color.pink.opacity(0.25))
                                    .cornerRadius(9)
                                    .foregroundColor(.black)
                            })
                        }
                    }
                }
                
            }
        }
        func revisar(){
        if !username1.isEmpty && !pswrd.isEmpty{
            for i in multipleAccounts.indices{
                if multipleAccounts[i].usernamee == username1 && multipleAccounts[i].password == pswrd{
                    isLoaded = true
                }
            }
            }
        }
//        
//            function to check if the password or user is not found
//        func check(){
//            if !username1.isEmpty && !pswrd.isEmpty{
//                    isLoaded = false
//            }
//        }
    }


#Preview {
    beginning(multipleAccounts: [user(fName: "", lName: "", usernamee: "", age: "", password: "")])
}
