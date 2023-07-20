//
//  CharacterView.swift
//  Auloa_09
//
//  Created by Student08 on 04/07/23.
//

import SwiftUI

struct CharacterView: View {
    
    var ac: AnimeCharacter
    var body: some View {
        ZStack{
            Color(.black)
                .ignoresSafeArea()
            VStack{
                AsyncImage(url: URL(string: ac.images!.jpg!.image_url!), content: { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: 200, maxHeight: 200)
                },
                           placeholder: {
                    ProgressView()
                })
                Text(ac.name!)
                    .foregroundColor(.white)
                ScrollView(){
                    Text(ac.about!)
                        .foregroundColor(.white)
                }
            }
        }
    }
}
