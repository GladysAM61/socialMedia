//
//  post.swift
//  socialMediaApp
//
//  Created by StudentAM on 4/23/24.
//

import SwiftUI

struct post: View {
    
    @State var column : [GridItem] = [
//   this is used to like layout the post
             GridItem(.fixed(50),spacing:35 , alignment: nil),
             GridItem(.fixed(50),spacing:35 , alignment: nil),
             GridItem(.fixed(50),spacing:35 , alignment: nil),
             GridItem(.fixed(50),spacing:35 , alignment: nil)
         ]
//    an array with the name of the images
    @State var picturesOfMiVida : [String] = [
                 "1","2","3","4",
                 "5","6","7","8",
                 "9","10","11","12",
                 "13","14","15","16"
    ]
    @Binding var tabSelection:Int
    @Binding var publicaciones : [posts]
    @Binding var personas : [people]
    @Binding var profilePic : String
    @Binding var loggedIn : [user]
    
    
//
    var body: some View {
        NavigationView{
        ZStack{
            Image("babyPink")
                .resizable()
            VStack{
                
                HStack{
                    Text("Post:")
                        .font(.system(size:40))
                    Spacer()
                        .frame(width: 300)
                }
                ScrollView{
                    LazyVGrid(columns: column){
//                        foreach loop to go through the array and make the images pop up
                        ForEach(picturesOfMiVida.indices, id:\.self){ i in
                            VStack{
//                                making the picture pop up by the content view of post1
                                post1(foto: picturesOfMiVida[i])
//                                taking them to the other page where they coud post the images as a story or post
                                NavigationLink(destination:post2(imagee: picturesOfMiVida[i],publicaciones:$publicaciones,personas:$personas,tabSelection:$tabSelection,profilePic:$profilePic,loggedIn: $loggedIn).navigationBarBackButtonHidden(false)/*tabSelection:$tabSelection*/){
                                    //                              emptyview makes nothing appear basically like an empty and invisable link
                                    Text(picturesOfMiVida[i])
                                        .foregroundColor(.black)
                                }
                            }
                            }
                        }
                    }
                }
            }
         }
        }
}

#Preview {
    post(tabSelection:.constant(1), publicaciones: .constant([]), personas: .constant([]), profilePic: .constant(""), loggedIn: .constant([]))
}
