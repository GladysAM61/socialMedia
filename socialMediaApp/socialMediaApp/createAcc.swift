//
//  createAcc.swift
//  socialMediaApp
//
//  Created by StudentAM on 4/25/24.
//

import SwiftUI

struct createAcc: View {
    @State var firstName : String = ""
    @State var LastName : String = ""
    @State var edad : String = ""
    @State var usernameee : String = ""
    @State var passwordddd : String = ""
    @State var bio1 : String = ""
    @State var profilePic : String = ""
    @State var images : [String] = ["pfp2","pfp3","pfp4","acc","pfp5"]
    @State var isLoaded : Bool = false
    @Binding var multipleAccounts: [user]
    @Binding var loggedIn : [user]
    
    var body: some View {
        
        NavigationView{
            ZStack{
                Image("babyPink")
                    .resizable()
                VStack{
                    Text("Create an Account")
                    VStack{
                        HStack{
                            Text("First Name: ")
//                            storing what the user typed in the textfield into the first name variable
                            TextField("Type here...",text: $firstName)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding()
                        }
                        HStack{
                            Text("Last Name: ")
                            //                            storing what the user typed in the textfield into the last name variable

                            TextField("Type here...",text: $LastName)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding()
                        }
                        HStack{
                            Text("Age: ")
                            //                            storing what the user typed in the textfield into the age variable

                            TextField("Type here...",text: $edad)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding()
                        }
                        HStack{
                            Text("Username: ")
                            //                            storing what the user typed in the textfield into the username variable

                            TextField("Type here...",text: $usernameee)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding()
                        }
                        HStack{
                            Text("Password: ")
                            //                            storing what the user typed in the textfield into the password variable

                            SecureField("Type here...",text: $passwordddd)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding()
                        }
                        HStack{
                            Text("Bio:")
                            //                            storing what the user typed in the textfield into the bio variable

                            TextEditor(text: $bio1)
                                .frame(height:30)
                                .cornerRadius(5)
                        }
                        HStack{
                            Text("Profile Picture: ")
                            VStack{
                               ScrollView{
//                                   displays the images they could select for their pfp and im using the selecting PFP custom view for it
                                    ForEach(images.indices, id: \.self) {i in
                                        selectingPFP(imageSelected: images[i],profilePic: $profilePic)
                                    }
                                }
                            }
                        }
                        
                        HStack{
//                            when they click the create account button it will run the addData function
                          Button("Create Account", action: {
                                addData()
                            })
                             .font(.system(size:25))
                             .frame(width:100, height:80)
                             .background(Color.pink.opacity(0.25))
                             .cornerRadius(9)
                             .foregroundColor(.black)
//                            if isloaded is true, then it will take them to the home page
//                            isloaded u=is used to determine if the user is logged in
                            NavigationLink(destination:ContentView(profilePic:.constant(""), username1: .constant(""), loggedIn: $loggedIn).navigationBarBackButtonHidden(true),isActive: $isLoaded){
//                              emptyview makes nothing appear basically like an empty and invisable link
                                EmptyView()
                            }
                            
                            
                            
                            
                            
                        }
                    }
                }
            }
        }
    }
    func addData(){
//        creating a variable using the user struct and im adding all of the
        let user : user=user(fName: firstName, lName: LastName, usernamee: usernameee, age: edad, password: passwordddd, profileImage: profilePic,bio: bio1)
//        Appending the new variable to the multiple accounts array
        multipleAccounts.append(user)
//        appending it to the logged in array since this is going to be the user thats logged in
        loggedIn.append(user)
//        changing it to true because someone is logged in 
      isLoaded = true
    }
}

#Preview {
    createAcc(multipleAccounts: .constant([]), loggedIn: .constant([]))
}
