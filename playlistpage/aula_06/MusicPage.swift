//
//  MusicPage.swift
//  aula_06
//
//  Created by Student08 on 26/06/23.
//

import SwiftUI

struct MusicPage: View {
    @State var name: String
    @State var artist: String
    @State var img: String
    var detail : Music
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.mint, .black]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack{
                AsyncImage(url: URL(string: "\(img)"), content: { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: 250, maxHeight: 250)
                },
                           placeholder: {
                    ProgressView()
                })
                Text("\(name)")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                Text("\(artist)")
                    .foregroundColor(.white)
                    .font(.title2)
                HStack{
                    Image(systemName: "shuffle")
                        .resizable()
                        .foregroundColor(.white)
                        .scaledToFit()
                        .padding()
                        .frame(width: 70.0, height: 70.0)
                    Image(systemName: "backward.end.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .scaledToFit()
                        .padding()
                        .frame(width: 70.0, height: 70.0)
                    Image(systemName: "play.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .scaledToFit()
                        .padding()
                        .frame(width: 70.0, height: 70.0)
                    Image(systemName: "forward.end.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .scaledToFit()
                        .padding()
                        .frame(width: 70.0, height: 70.0)
                    Image(systemName: "repeat")
                        .resizable()
                        .foregroundColor(.white)
                        .scaledToFit()
                        .padding()
                        .frame(width: 70.0, height: 70.0)
                }
            }
        }
    }
}

struct MusicPage_Previews: PreviewProvider {
    static var previews: some View {
        let teste = Music(id:5, name:"teste 5", artist: "Eve MV", img: "")
        MusicPage(name: "", artist: "", img : "", detail: teste)
        
    }
}
