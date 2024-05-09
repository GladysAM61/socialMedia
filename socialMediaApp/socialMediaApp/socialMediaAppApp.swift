//
//  socialMediaAppApp.swift
//  socialMediaApp
//
//  Created by StudentAM on 4/22/24.
//

import SwiftUI

@main
struct socialMediaAppApp: App {
   
    
    var body: some Scene {
        WindowGroup {
            ContentView(profilePic: .constant(""), username1: .constant(""),loggedIn: .constant([]))
        }
    }
}
