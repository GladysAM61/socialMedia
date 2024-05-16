//
//  profileView.swift
//  socialMediaApp
//
//  Created by StudentAM on 5/14/24.
//


import SwiftUI


struct profileView: View {
    
    
    @State var fotoDePerfil : String
    @State var nombreDeUsario: String
    @State var elBio3: String
    @State var folowers: Int
    @State var fotoUno : String
    @State var fotoDos: String
    
    var body: some View {
        ZStack{
            Image("babyPink")
                .resizable()
            VStack{
                HStack{
                        Image(fotoDePerfil)
                                .resizable()
                                .cornerRadius(100)
                                .frame(width:120, height:130)
                        Spacer()
                               .frame(width:50)
                        Text(nombreDeUsario)                                            .font(.system(size: 30))
                    }
                       Text(elBio3)
                    HStack{
                         Text("Followers:")
                         Text("\(folowers)")
                     }
                   Image(fotoUno)
                        .resizable()
                        .frame(width: 150, height: 150)
                     Image(fotoDos)
                       .resizable()
                       .frame(width: 150, height: 150)
                }
            }
        }
    }

#Preview {
    profileView(fotoDePerfil: "acc", nombreDeUsario: "LaBichota",elBio3: "543", folowers: 80, fotoUno: "3", fotoDos: "4")
}
