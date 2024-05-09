//
//  selectingPFP.swift
//  socialMediaApp
//
//  Created by StudentAM on 5/8/24.
//

import SwiftUI

struct selectingPFP: View {
    var imageSelected : String = ""
    var imageChosen: String = ""
    @Binding var profilePic : String
    
    
    var body: some View {
        Image(imageSelected)
            .resizable()
            .frame(width: 80,height: 80)
            .cornerRadius(50)
        Button("Select Here", action: {
            profilePic.append(imageSelected)
        })
    }
}

#Preview {
    selectingPFP(imageSelected: "1", profilePic: .constant(""))
}
