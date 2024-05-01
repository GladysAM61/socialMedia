//
//  createAcc.swift
//  socialMediaApp
//
//  Created by StudentAM on 4/25/24.
//

import SwiftUI

struct createAcc: View {
    @State private var loggedIn: [user] = []
    @State var firstName : String = ""
    @State var LastName : String = ""
    @State var edad : String = ""
    @State var usernameee : String = ""
    @State var passwordddd : String = ""
    
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
                            Button("Create Account", action: {
                                addData()
                            })
                             .font(.system(size:25))
                             .frame(width:100, height:80)
                             .background(Color.pink.opacity(0.25))
                             .cornerRadius(9)
                             .foregroundColor(.black)
                            NavigationLink(destination:beginning(multipleAccounts: [user(fName: firstName, lName: LastName, usernamee: usernameee, age: edad, password: passwordddd)]).navigationBarBackButtonHidden(true), label: {
                                Text("Back to login")
                                    .font(.system(size:25))
                                    .frame(width:100, height:80)
                                    .background(Color.pink.opacity(0.25))
                                    .cornerRadius(9)
                                    .foregroundColor(.black)
                                
                            })
                        }
                    }
                }
            }
        }
    }
    func addData(){
        let user : user=user(fName: firstName, lName: LastName, usernamee: usernameee, age: edad, password: passwordddd)
        loggedIn.append(user)
      
    }
}

#Preview {
    createAcc()
}
