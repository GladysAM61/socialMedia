//
//  selectingPFP.swift
//  socialMediaApp
//
//  Created by StudentAM on 5/8/24.
//

import SwiftUI

struct selectingPFP: View {
//    variable with the image
    var imageSelected : String = ""
//    this is here the image they want for their profile will be stored
    var imageChosen: String = ""
    @Binding var profilePic : String
    
    
    var body: some View {
        Image(imageSelected)
            .resizable()
            .frame(width: 80,height: 80)
            .cornerRadius(50)
//        if they click the Text, it will store the image into the imageselceted variable
        Button("Select Here", action: {
            profilePic.append(imageSelected)
        })
    }
}

#Preview {
    selectingPFP(imageSelected: "1", profilePic: .constant(""))
}
