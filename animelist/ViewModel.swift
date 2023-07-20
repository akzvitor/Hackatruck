//
//  ViewModel.swift
//  Auloa_09
//
//  Created by Student08 on 29/06/23.
//

import SwiftUI

class ViewModel: ObservableObject {
    @Published var arrayAnimeCharacters: [AnimeCharacter] = []
    
    func fetch() {
        guard let url = URL(string: "https://api.jikan.moe/v4/characters") else {
            return
        }
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let parsed = try JSONDecoder().decode(Teste.self, from: data)
                DispatchQueue.main.async{
                    self?.arrayAnimeCharacters = parsed.data!
                }
            }catch{
                print(error)
            }
        }
        task.resume()
    }
}
