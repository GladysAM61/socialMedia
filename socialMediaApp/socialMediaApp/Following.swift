//
//  Following.swift
//  socialMediaApp
//
//  Created by StudentAM on 5/15/24.
//

import SwiftUI

//creating a struct for peoples profiles
struct profile3{
     var pictureProfile : String
     var elUsername : String
     var elBio : String
    var picture1 : String
    var picture2 : String
    var seguidores : Int
}


struct Following: View {
//variable for people profiles
    @State var profiless = [
        profile3(pictureProfile: "karolG", elUsername: "LaBichota", elBio: "Nunca te cambian por algo mejor",picture1: "karolGStory", picture2: "",seguidores: 500),
       profile3(pictureProfile: "ivanCornejo" , elUsername: "Ivannn    " , elBio :  "te deseo lo mejor, aunque no sea conmigo" , picture1 : "ivan1", picture2 : "ivan2" , seguidores : 150000),
       profile3(pictureProfile: "JOP" , elUsername: "Jesus_Ortiz", elBio :  "pura fuerza regida" , picture1 : "jopStory", picture2 : "jop2", seguidores : 1000000),
       profile3(pictureProfile: "pesoPluma" , elUsername: "laDobleP ", elBio :  "el compa peso pluma", picture1 : "pesoP1", picture2 : "pesoP2" , seguidores : 1590000),
        profile3(pictureProfile: "chivasLogo" , elUsername: "Chivas" ,elBio: "", picture1 : "chivas1", picture2 : "chivasIGpost", seguidores : 1500000),
        profile3(pictureProfile: "crisMJ" , elUsername: "CrisMJ", elBio :  "Cris eme jotaaa", picture1 : "crismj1", picture2 : "crismj2" , seguidores : 145000),
        profile3(pictureProfile: "pantter1" , elUsername: "Panter_Belico" , elBio :  "Tiempo al tiempo…", picture1 : "panter3", picture2 : "panter2" , seguidores : 191000),
        profile3(pictureProfile: "luisR" , elUsername: "LuisRConriquez" , elBio :  "TRAKASSSS" , picture1 : "luisr2", picture2 : "luisr3", seguidores : 102543),
        profile3(pictureProfile: "gabitopfp" , elUsername: "gabitoB", elBio : "el mundo de Gabito " , picture1 : "gabito1", picture2 : "gabitoBallastero" , seguidores : 678320),
        profile3(pictureProfile: "oscarMaydon" , elUsername: "Oscar_maydon" , elBio :  "Pobrecita ahora se queda mirando", picture1 : "oscar1", picture2 : "oscar2" , seguidores : 932000),
        profile3(pictureProfile: "MarcaR", elUsername: "laMarcaRegistrada", elBio : "y asi suena la marca registrada", picture1 : "marcar2", picture2 : "marcar1" , seguidores : 1500000),
        profile3(pictureProfile: "gemelosdeSpfp", elUsername: "LosGemelosDeSinaloa", elBio : "puros Gemelos de sinaloa", picture1 : "gemelos1", picture2 : "gemelos2", seguidores : 163200),
        profile3(pictureProfile: "edicionespecialpfp", elUsername: "Edicion_Especial", elBio :  "esto es Edicion Especial", picture1 : "edicion1", picture2 : "edicion2", seguidores : 1300000),
        profile3(pictureProfile: "natanael", elUsername: "Nata_Cano" , elBio :  "Nata, eahhh", picture1 : "nata2", picture2 : "nata3", seguidores : 1980000),
        profile3(pictureProfile: "kalipfp", elUsername: "KaliUchis" , elBio :  "i wish you roses and roses and roses" , picture1 : "kali2", picture2 : "kali1", seguidores : 1320000)
    ]
    
    var body: some View {
        NavigationView{
                ZStack{
                    Image("babyPink")
                        .resizable()
                    ScrollView(.vertical){
//                        foreach loop to go through each profile
                    ForEach(profiless.indices, id:\.self){ i in
                        VStack{
                            HStack{
//                                displaying their profile picture
                                Image(profiless[i].pictureProfile)
                                    .resizable()
                                    .frame(width:60, height: 60)
                                    .cornerRadius(100)
//                                making their username a navigation link into the next oage where they could see the persons profile
                                NavigationLink(destination: profileView(fotoDePerfil: profiless[i].pictureProfile, nombreDeUsario: profiless[i].elUsername,elBio3: profiless[i].elBio, folowers: profiless[i].seguidores, fotoUno: profiless[i].picture1, fotoDos: profiless[i].picture2).navigationBarBackButtonHidden(true), label: {
                                    Text(profiless[i].elUsername)
                                })
                                       .foregroundColor(.black)
                                
                                
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    Following()
}
