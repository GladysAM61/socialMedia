//
//  AccInfo.swift
//  socialMediaApp
//
//  Created by StudentAM on 5/6/24.
//

import SwiftUI

struct AccInfo: View {
    @Binding var loggedIn: [user]
    @State var newBio : String = ""
    @State var newUserName : String = ""
    @Binding var publicaciones: [posts]
    @Binding var personas : [people]
    @State private var isLoaded: Bool = false
    @State var followers: Int = 54
    
    
    var body: some View {
        NavigationView{
          ZStack{
            Image("babyPink")
                 .resizable()
                VStack{
                    ForEach(loggedIn.indices){i in
                        
                        HStack{
                            Text("First Name:")
                            Text(loggedIn[i].fName)
                                .frame(width:80,height: 25)
                                .background(Color.white)
                                .cornerRadius(9)
                               
                        }
                        HStack{
                            Text("Last Name:")
                            Text(loggedIn[i].lName)
                                .frame(width:80,height: 25)
                                .background(Color.white)
                                .cornerRadius(9)
                        }
                        HStack{
                            Text("Age:")
                            Text(loggedIn[i].age)
                                .frame(width:80,height: 25)
                                .background(Color.white)
                                .cornerRadius(9)
                        }
                    }
                    
                    
                    
                    HStack{
                        Text("Followers:")
                        
//      everyone always has 54 followers
                        Text("\(followers)")
                            .frame(width:80,height: 25)
                            .background(Color.white)
                            .cornerRadius(9)
                           
                    }
                    HStack{
                        Text("Following: ")
                        NavigationLink(destination: Following().navigationBarBackButtonHidden(true), label: {
                            Text("15")
                        })
                          .frame(width:80,height: 25)
                           .background(Color.white)
                           .foregroundColor(.black)
                           .cornerRadius(9)
                    }
                    
                    
                    HStack{
                        Text("Change Bio:")
                        TextField("Type here...",text: $newBio)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                        Button(action: changeBio, label: {
                            Text("new bio")
                        })
                            .font(.system(size:12))
                            .frame(width:60, height:50)
                            .background(Color.pink.opacity(0.25))
                            .cornerRadius(9)
                            .foregroundColor(.black)
                    }
                    
                    
                    HStack{
                        Text("Change Username:")
                        TextField("Type here...",text: $newUserName)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                        Button(action: changeUserName, label: {
                            Text("new username")
                        })
                           .font(.system(size:12))
                           .frame(width: 70, height:50)
                           .background(Color.pink.opacity(0.25))
                           .cornerRadius(9)
                           .foregroundColor(.black)
                    }
                    
                    
                    
                    
                    
                    
                    //      logs you out by clicking a button that amptys the logged in array and
//                    HStack{
//                        Button(action: emptyLoggin, label: {
//                            Text("Log Out")
//                        })
//                              .font(.system(size:20))
//                             .foregroundColor(.black)
//                             .frame(width:170,height: 50)
//                             .background(Color.white)
//                             .cornerRadius(80)
////                        
//                    }
                }
            }
          }
        }
        //    this function lets us change the bio
        //    i made the bio empty and then i added the new bio to it
        func changeBio(){
            loggedIn[0].bio = ""
            loggedIn[0].bio = newBio
        }
    
        //  changing the username
        //    i made the username empty and then i added the new username to it
        func changeUserName(){
            loggedIn[0].usernamee = ""
            loggedIn[0].usernamee = newUserName
         }
    
        
        //    function to make the logged in empty so you could log out
        func emptyLoggin(){
            print("loggingout")
//            tabSelection = 1
            isLoaded = true
            
        }
//function to update the following thing
    func follow(){
        ForEach(publicaciones.indices, id:\.self){i in
            if publicaciones[i].username == loggedIn[0].usernamee{
//                followers + 1
            }
            else{
//                followers + 1
            }
        }
        
        ForEach(personas.indices, id:\.self){ i in
            if personas[i].userName == loggedIn[0].usernamee{
//                                yourSelf + 1
            }
        }
    }
    
}

#Preview {
    AccInfo(loggedIn: .constant([user(fName: "Gladys", lName: "Mendoza", usernamee: "la_pretty28", age: "17", password: "lapretty_28", profileImage: "1", bio: "String")]), publicaciones: .constant([]), personas: .constant([]))
}
