//
//  beginning.swift
//  socialMediaApp
//
//  Created by StudentAM on 4/25/24.
//

import SwiftUI

//creating a struct so i can store what the user set as their password and username

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
                        }
                    }
                }
                
            }
        }
//    function to see if the password and the username match
        func revisar(){
//            if the username and pasword text fields ARE NOT empty, then run the code
        if !username1.isEmpty && !pswrd.isEmpty{
//            going through one array in multiple accounts
            for i in multipleAccounts.indices{
//                if the username from the array matches the username entered in the textfield and the password from the array matches the password entered in the textfield when they click the enter button, then change the bool to true
                
//                if its true, its gonna take you to the home page
//                we also append the account entered to the loggedIn var because that is the user that is logged in
                if multipleAccounts[i].usernamee == username1 && multipleAccounts[i].password == pswrd{
                    
                    loggedIn.append(multipleAccounts[i])
                    isLoaded = true
                }
            }
            }
            
        }
    }


#Preview {
    beginning( profilePic: .constant(""), loggedIn: .constant([]), multipleAccounts: .constant([]))
}
