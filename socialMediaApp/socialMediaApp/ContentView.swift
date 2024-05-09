//
//  ContentView.swift
//  socialMediaApp
//
//  Created by StudentAM on 4/22/24.
//

import SwiftUI


struct ContentView: View {
    @Binding var profilePic: String
    @Binding var username1: String
    
    @Binding var loggedIn : [user]
    
    var body: some View {
        tabPage(profilePic:$profilePic, username1: $username1, loggedIn: $loggedIn) 
    }
}

#Preview {
    ContentView(profilePic: .constant("acc"),username1: .constant("gladys"), loggedIn: .constant([]))
}
