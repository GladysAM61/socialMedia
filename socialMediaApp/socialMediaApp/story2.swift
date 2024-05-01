//
//  story2.swift
//  socialMediaApp
//
//  Created by StudentAM on 4/23/24.
//

import SwiftUI

struct story2: View {
    @State var userName: String = ""
    @State var hearts : Int = 0
    @State var theCaption : String = ""
    @State var foto : String = ""
    @State var heart : String = "🤍"
    @State var actualyLiked : Bool = false
    
    
    
    var body: some View {
        NavigationView{
            ZStack{
                Image("babyPink")
                    .resizable()
                VStack{
                    HStack{
                        //                    Textbox for the username to appear
                        Text(userName)
                        //                    theres a spacer so the username appears on the left
                        Spacer()
                            .frame(width:230)
                    }
                    //                this is where the image pops up and i put it in the vstack
                    Image(foto)
                        .resizable()
                        .frame(width: 300,height:250)
                    HStack{
                        //                this button is the emoji one where you give likes
                        Button("\(heart)", action: {
                            //                        the heart var is a string with a white emoji and if they click on this button then they will change it to a pink heart and add one to the count
                            //                        we do this by changing the bool to true and if its true then make it pink but if its false then don't
                            actualyLiked = true
                            if actualyLiked == true{
                                heart = "🩷"
                                hearts += 1
                                
                            }else{
                                heart = "🤍"
                            }
                        })
                        Text("\(hearts) likes")
                        Spacer()
                            .frame(width:180)
                    }
                    HStack{
                        Text(theCaption)
                        //                    Spacer()
                        //                        .frame(width:220)
                    }
                }
            }
           
        }
    }
}

#Preview {
    story2(userName: "ELZorro", hearts: (9000), theCaption: "Holaaaa",foto: "rauwIG")
}
