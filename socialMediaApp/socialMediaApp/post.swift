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
                        ForEach(picturesOfMiVida.indices, id:\.self){ i in
                            VStack{
                                post1(foto: picturesOfMiVida[i])
                                NavigationLink(destination:post2(imagee: picturesOfMiVida[i],publicaciones:.constant([]),personas:.constant([])).navigationBarBackButtonHidden(true)){
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
    post()
}
