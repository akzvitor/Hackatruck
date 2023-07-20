//
//  ContentView.swift
//  aula_06
//
//  Created by Student08 on 26/06/23.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var arrayOfMusics = [
        Music(id:1, name:"Dramaturgy", artist: "Eve MV", img: "https://i.scdn.co/image/ab67616d0000b2739794fc0e54d795a65d732967"),
        Music(id:2, name:"Tokyo Ghetto", artist: "Eve MV", img: "https://i.scdn.co/image/ab67616d0000b2736c2af0c1619740ab0cc28989"),
        Music(id:3, name:"Outsider", artist: "Eve MV", img: "https://i.scdn.co/image/ab67616d0000b2736c2af0c1619740ab0cc28989"),
        Music(id:4, name:"Last Dance", artist: "Eve MV", img: "https://i.scdn.co/image/ab67616d0000b2736c2af0c1619740ab0cc28989"),
        Music(id:5, name:"Bokuramadaunderground", artist: "Eve MV", img: "https://i.scdn.co/image/ab67616d0000b2736c2af0c1619740ab0cc28989"),
        Music(id:6, name:"Kokoroyohou", artist: "Eve MV", img: "https://upload.wikimedia.org/wikipedia/en/b/b0/Smile_-_cover.png"),
        Music(id:7, name:"Nonsense Bungaku", artist: "Eve MV", img: "https://i.scdn.co/image/ab67616d0000b2739794fc0e54d795a65d732967"),
        Music(id:8, name:"Anoko Secret", artist: "Eve MV", img: "https://i.scdn.co/image/ab67616d0000b2739794fc0e54d795a65d732967"),
        Music(id:9, name:"Shinkai", artist: "Eve MV", img: "https://i.scdn.co/image/ab67616d0000b2739794fc0e54d795a65d732967"),
        Music(id:10, name:"Ao No Waltz", artist: "Eve MV", img: "https://i.scdn.co/image/ab67616d0000b2739794fc0e54d795a65d732967")]
    
    var body: some View {
        NavigationStack{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [.mint, .black]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                ScrollView{
                    VStack {
                        Image("evemv2")
                            .resizable()
                            .padding()
                            .scaledToFit()
                            .frame(width: 275.0, height: 275.0)
                        Text("Eve MV")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                        HStack{
                            AsyncImage(url: URL(string: "https://i.scdn.co/image/ab67706c0000da84632df540b148fd697e3c38e9"), content: { image in
                                image.resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(maxWidth: 40, maxHeight: 40)
                            },
                                       placeholder: {
                                ProgressView()
                            })
                            Text("EveMusics")
                                .font(.title3)
                                .foregroundColor(.white)
                            Spacer()
                        }
                        ForEach(arrayOfMusics, content: { music in
                            NavigationLink(destination: MusicPage(name: music.name, artist: music.artist, img: music.img, detail: music)){
                                HStack{
                                    AsyncImage(url: URL(string: "\(music.img)"), content: { image in
                                        image.resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(maxWidth: 70, maxHeight: 70)
                                    },
                                               placeholder: {
                                        ProgressView()
                                    })
                                    VStack{
                                        HStack{
                                            Text("\(music.name)")
                                                .foregroundColor(.white)
                                            Spacer()
                                        }
                                        HStack{
                                            Text("\(music.artist)")
                                                .foregroundColor(.white)
                                            Spacer()
                                        }
                                    }
                                    Spacer()
                                    Image(systemName: "ellipsis")
                                        .foregroundColor(.white)
                                }
                                Spacer()
                            }
                        })
                        Spacer()
                            .frame(width: 75.0, height: 75.0)
                        VStack{
                            Text("Sugeridos")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                                .position(x:80)
                            ScrollView(.horizontal){
                                HStack{
                                    VStack{
                                        AsyncImage(url: URL(string: "https://i.scdn.co/image/ab67616d0000b2731ce13e03759fd585b8115476"), content: { image in
                                            image.resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(maxWidth: 200, maxHeight: 200)
                                        },
                                                   placeholder: {
                                            ProgressView()
                                        })
                                        Text("HigeD - SBY")
                                            .foregroundColor(.white)
                                    }
                                    VStack{
                                        AsyncImage(url: URL(string: "https://i.scdn.co/image/ab67616d0000b27326633dee95e1998443a4c238"), content: { image in
                                            image.resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(maxWidth: 200, maxHeight: 200)
                                        },
                                                   placeholder: {
                                            ProgressView()
                                        })
                                        Text("HigeD - CRYB")
                                            .foregroundColor(.white)
                                    }
                                    VStack{
                                        AsyncImage(url: URL(string: "https://i.discogs.com/Yc1xmhxSpcWIdK78hM1BULhHWvCweGhjxaxUO8zpFEU/rs:fit/g:sm/q:90/h:594/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE1MzQz/MjE5LTE1OTAwMzg3/OTUtMzg3Mi5qcGVn.jpeg"), content: { image in
                                            image.resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(maxWidth: 200, maxHeight: 200)
                                        },
                                                   placeholder: {
                                            ProgressView()
                                        })
                                        Text("HigeD - ILV")
                                            .foregroundColor(.white)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        .tint(.white)
    }
}
struct Music: Identifiable{
    var id: Int
    var name: String
    var artist: String
    var img: String
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

