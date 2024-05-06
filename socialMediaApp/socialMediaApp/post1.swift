//
//  post1.swift
//  socialMediaApp
//
//  Created by StudentAM on 5/2/24.
//

import SwiftUI

struct post1: View {
    @State var foto: String = ""
    var body: some View {
            VStack{
                HStack{
                    Image(foto)
                        .resizable()
                        .frame(width: 110, height: 140 )
                    Spacer()
                        .frame(width:20)
                }
            }
    }
}

#Preview {
    post1(foto: "1")
}
