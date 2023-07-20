//
//  ContentView.swift
//  Auloa_09
//
//  Created by Student08 on 29/06/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    @State var nameKanji = ""
    
    var body: some View {
        NavigationStack{
            ZStack {
                Color(.black)
                    .ignoresSafeArea()
                VStack{
                    VStack{
                        Image("animelist")
                            .resizable()
                            .scaledToFill()
                            //.padding()
                           .frame(width: 150, height: 150)
                        VStack{
                            VStack{
                                Text("Anime characters list")
                                    .foregroundColor(.white)
                                    .font(.title)
                                
                                Text("キャラクターリスト")
                                    .foregroundColor(.white)
                                // Spacer()
                            }
                        }
                    }
                    
                    //Spacer()
                    ScrollView(){
                        ForEach(viewModel.arrayAnimeCharacters, id: \.self) { character in
                            NavigationLink(destination: CharacterView(ac: character)){
                                VStack{
                                    HStack{
                                        AsyncImage(url: URL(string: character.images!.jpg!.image_url!), content: { image in
                                            image.resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(maxWidth: 100, maxHeight: 100)
                                        },
                                                   placeholder: {
                                            ProgressView()
                                        })
                                        VStack{
                                            HStack {
                                                Text("\(character.name!)")
                                                    .foregroundColor(.white)
                                                Spacer()
                                            }
                                            HStack{
                                                if(character.name_kanji != nil){
                                                    Text("\(character.name_kanji!)")
                                                        .foregroundColor(.white)
                                                    Spacer()
                                                }
                                            }
                                        }
                                        Spacer()
                                    }
                                }
                            }
                        }
                        Spacer()
                    }
                    //.padding()
                }
            }
            
            .onAppear(){
                viewModel.fetch()
            }
        }
        .tint(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
