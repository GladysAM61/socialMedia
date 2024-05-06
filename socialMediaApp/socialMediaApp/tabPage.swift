//
//  tabPage.swift
//  socialMediaApp
//
//  Created by StudentAM on 5/3/24.
//

import SwiftUI

struct tabPage: View {
    @State var tabExist : Bool = false
    
    
    var body: some View {
        
//        if tabExist{
        
        
        //            the tabview needs to be a file by itself
            TabView{
                //                takes you to the home page which is the beggining one
                Home()
                    .tabItem {
                        Image(systemName: "house.fill")
                            .foregroundStyle(Color.pink, Color.pink)
                        Text("Home")
                    }
                //                takes you to the post page which lets you upload images
                post()
                    .tabItem {
                        Image(systemName: "2.square.fill")
                            .foregroundStyle(Color.pink, Color.pink)
                        Text("Post")
                    }
                
                //                takes you to the message page where you can text
                message()
                    .tabItem {
                        Image(systemName: "2.square.fill")
                            .foregroundStyle(Color.pink, Color.pink)
                        Text("Message")
                    }
                //                takes you to the account page where you can text
                account()
                    .tabItem {
                        Image(systemName: "2.square.fill")
                            .foregroundStyle(Color.pink, Color.pink)
                        Text("Account")
                    }
//            }
       }
    }
}

#Preview {
    tabPage()
}
