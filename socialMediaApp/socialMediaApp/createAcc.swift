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
//                            storing what the user typed in the textfield into the
                            TextField("Type here...",text: $firstName)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding()
                        }
                        HStack{
                            Text("Last Name: ")
                            TextField("Type here...",text: $LastName)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding()
                        }
                        HStack{
                            Text("Age: ")
                            TextField("Type here...",text: $edad)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding()
                        }
                        HStack{
                            Text("Username: ")
                            TextField("Type here...",text: $usernameee)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding()
                        }
                        HStack{
                            Text("Password: ")
                            SecureField("Type here...",text: $passwordddd)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding()
                        }
                        HStack{
                            Text("Bio:")
                            TextEditor(text: $bio1)
                                .frame(height:30)
                                .cornerRadius(5)
                        }
                        HStack{
                            Text("Profile Picture: ")
                            VStack{
                               ScrollView{
                                    ForEach(images.indices, id: \.self) {i in
                                        selectingPFP(imageSelected: images[i],profilePic: $profilePic)
                                    }
                                }
                            }
                        }
                        
                        HStack{
                          Button("Create Account", action: {
                                addData()
                            })
                             .font(.system(size:25))
                             .frame(width:100, height:80)
                             .background(Color.pink.opacity(0.25))
                             .cornerRadius(9)
                             .foregroundColor(.black)
                            
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
        let user : user=user(fName: firstName, lName: LastName, usernamee: usernameee, age: edad, password: passwordddd, profileImage: profilePic,bio: bio1)
        multipleAccounts.append(user)
        loggedIn.append(user)
      isLoaded = true
    }
}

#Preview {
    createAcc(multipleAccounts: .constant([]), loggedIn: .constant([]))
}
