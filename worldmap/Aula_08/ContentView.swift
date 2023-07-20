//
//  ContentView.swift
//  Aula_08
//
//  Created by Student08 on 28/06/23.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @State private var showAlert = false
    @State private var showingSheet = false
    
    @State var arrayOfLocations = [Location(name: "Brazil" , coordinate: CLLocationCoordinate2D(latitude: -19.924557, longitude: -43.991597), flag: "https://static.todamateria.com.br/upload/ba/nd/bandeira-do-brasil-og.jpg", description: "Brazil is the largest country in South America and the fifth largest nation in the world. It forms an enormous triangle on the eastern side of the continent with a 4,500-mile (7,400-kilometer) coastline along the Atlantic Ocean. It has borders with every South American country except Chile and Ecuador."), Location(name: "Japan" , coordinate: CLLocationCoordinate2D(latitude: 36.182225, longitude: 138.2332491), flag: "https://cdn.britannica.com/91/1791-004-DA3579A5/Flag-Japan.jpg", description: "Japan is an archipelago, or string of islands, on the eastern edge of Asia. There are four main islands: Hokkaido, Honshu, Shikoku, and Kyushu. There are also nearly 4,000 smaller islands! Japan's nearest mainland neighbors are the Siberian region of Russia in the north and Korea and China farther south."), Location(name: "Canada" , coordinate: CLLocationCoordinate2D(latitude: 62.400551, longitude: -102.041303), flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/Flag_of_Canada.svg/2560px-Flag_of_Canada.svg.png", description: "Canada is a vast and rugged land. From north to south it spans more than half the Northern Hemisphere. From east to west it stretches almost 4,700 miles (7,560 kilometers) across six time zones. It is the second largest country in the world, but it has only one-half of one percent of the world's population."), Location(name: "South Africa" , coordinate: CLLocationCoordinate2D(latitude: -30.9734533, longitude: 22.2334271), flag: "https://cdn.britannica.com/27/4227-004-32423B42/Flag-South-Africa.jpg", description: "South Africa is the 25th largest country in the world and is bordered by Namibia, Botswana, Zimbabwe, Mozambique, Swaziland, and Lesotho. The country has an extensive coastline, which is bordered in the west by the Atlantic Ocean and to the south and southeast by the Indian Ocean."), Location(name: "South Korea" , coordinate: CLLocationCoordinate2D(latitude: 37.5650337, longitude: 126.8093285), flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/28/Flag_of_South_Korea_%281945%E2%80%931948%29.svg/2560px-Flag_of_South_Korea_%281945%E2%80%931948%29.svg.png", description: "South Korea is a country in Eastern Asia occupying the southern half of the Korean Peninsula. It borders the Sea of Japan, the Yellow Sea, and North Korea. South Korea's terrain is mostly mountainous.")]
    
    let annotations = [
            Country(name: "Brazil", coordinate: CLLocationCoordinate2D(latitude: -14.2350, longitude: -51.9253)),
            Country(name: "Japan", coordinate: CLLocationCoordinate2D(latitude: 36.182225, longitude: 138.2332491)),
            Country(name: "Canada", coordinate: CLLocationCoordinate2D(latitude: 62.400551, longitude: -102.041303)),
            Country(name: "South Africa", coordinate: CLLocationCoordinate2D(latitude: -30.9734533, longitude: 22.2334271)), Country(name: "South Korea", coordinate: CLLocationCoordinate2D(latitude: 37.5650337, longitude: 126.8093285))
        ]
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -14.2350, longitude: -51.9253), span: MKCoordinateSpan(latitudeDelta: 70, longitudeDelta: 70))
    
    var body: some View {
        VStack {
            Text("World Map")
                .font(.largeTitle)
            Text("\(arrayOfLocations[0].name)")
                .font(.title2)
            Map(coordinateRegion: $region, annotationItems: annotations){
                MapAnnotation(coordinate: $0.coordinate) {
                    Circle()
                        .frame(width: 20.0, height: 20.0)
                        .onTapGesture {
                            showingSheet = true
                        }
                }
            }
                .scaledToFill()
                .sheet(isPresented: $showingSheet) {
                    VStack{
                        Text("\(arrayOfLocations[0].name)")
                            .font(.largeTitle)
                        AsyncImage(url: URL(string: "\(arrayOfLocations[0].flag)"), content: { image in
                            image.resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxWidth: 200, maxHeight: 200)
                        },
                                   placeholder: {
                            ProgressView()
                        })
                        HStack{
                            Spacer()
                            Text("\(arrayOfLocations[0].description)")
                                .font(.title3)
                            Spacer()
                        }
                    }
                }
            ScrollView(.horizontal){
                HStack{
                    Button{
                        showAlert = true
                        arrayOfLocations[0].name = "Brazil"
                        arrayOfLocations[0].flag = "https://static.todamateria.com.br/upload/ba/nd/bandeira-do-brasil-og.jpg"
                        arrayOfLocations[0].description = "Brazil is the largest country in South America and the fifth largest nation in the world. It forms an enormous triangle on the eastern side of the continent with a 4,500-mile (7,400-kilometer) coastline along the Atlantic Ocean. It has borders with every South American country except Chile and Ecuador."
                        region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -14.2350, longitude: -51.9253), span: MKCoordinateSpan(latitudeDelta: 70, longitudeDelta: 70))
                    } label: {
                        Text("Brazil")
                            .cornerRadius(15)
                            .padding(25)
                            .foregroundColor(.white)
                            .background(AsyncImage(url: URL(string: "https://static.todamateria.com.br/upload/ba/nd/bandeira-do-brasil-og.jpg"), content: { image in
                                image.resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(maxWidth: 200, maxHeight: 200)
                            },
                                       placeholder: {
                                ProgressView()
                            }))
                    }
                    .cornerRadius(10)
                    
                    Button{
                        showAlert = true
                        arrayOfLocations[0].name = "Japan"
                        arrayOfLocations[0].flag = arrayOfLocations[1].flag
                        arrayOfLocations[0].description = arrayOfLocations[1].description
                        region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 36.182225, longitude: 138.2332491), span: MKCoordinateSpan(latitudeDelta: 20, longitudeDelta: 20))
                    } label: {
                        Text("Japan")
                        .cornerRadius(15)
                        .padding(25)
                        .foregroundColor(.white)
                        .background(AsyncImage(url: URL(string: "https://cdn.britannica.com/91/1791-004-DA3579A5/Flag-Japan.jpg"), content: { image in
                            image.resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxWidth: 200, maxHeight: 200)
                        },
                                   placeholder: {
                            ProgressView()
                        }))
                    }
                    .cornerRadius(10)

                    Button{
                        showAlert = true
                        arrayOfLocations[0].name = "Canada"
                        arrayOfLocations[0].flag = arrayOfLocations[2].flag
                        arrayOfLocations[0].description = arrayOfLocations[2].description
                        region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 62.400551, longitude: -102.041303), span: MKCoordinateSpan(latitudeDelta: 50, longitudeDelta: 50))
                    } label: {
                        Text("Canada")
                        .cornerRadius(15)
                        .padding(20)
                        .foregroundColor(.white)
                        .background(AsyncImage(url: URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/Flag_of_Canada.svg/2560px-Flag_of_Canada.svg.png"), content: { image in
                            image.resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxWidth: 200, maxHeight: 200)
                        },
                                   placeholder: {
                            ProgressView()
                        }))
                    }
                    .cornerRadius(10)

                    Button{
                        showAlert = true
                        arrayOfLocations[0].name = "South Africa"
                        arrayOfLocations[0].flag = arrayOfLocations[3].flag
                        arrayOfLocations[0].description = arrayOfLocations[3].description
                        region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -30.9734533, longitude: 22.2334271), span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40))
                    } label: {
                        Text("South Africa")
                        .cornerRadius(15)
                        .padding(15)
                        .foregroundColor(.white)
                        .background(AsyncImage(url: URL(string: "https://cdn.britannica.com/27/4227-004-32423B42/Flag-South-Africa.jpg"), content: { image in
                            image.resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxWidth: 200, maxHeight: 200)
                        },
                                   placeholder: {
                            ProgressView()
                        }))
                    }
                    .cornerRadius(10)
                    
                    Spacer()
                    Button{
                        showAlert = true
                        arrayOfLocations[0].name = "South Korea"
                        arrayOfLocations[0].flag = arrayOfLocations[4].flag
                        arrayOfLocations[0].description = arrayOfLocations[4].description
                        region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 35.7946262, longitude: 125.2324397), span: MKCoordinateSpan(latitudeDelta: 15, longitudeDelta: 15))

                    } label: {
                        Text("South Korea")
                        .cornerRadius(15)
                        .padding(15)
                        .foregroundColor(.white)
                        .background(AsyncImage(url: URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/28/Flag_of_South_Korea_%281945%E2%80%931948%29.svg/2560px-Flag_of_South_Korea_%281945%E2%80%931948%29.svg.png"), content: { image in
                            image.resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxWidth: 200, maxHeight: 200)
                        },
                                   placeholder: {
                            ProgressView()
                        }))
                    }
                    .cornerRadius(10)
                    Spacer()
                }
            }
        }
    }
}

struct Location: Identifiable {
    var id = UUID()
    var name: String
    var coordinate: CLLocationCoordinate2D
    var flag: String
    var description: String
}

struct Country: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
