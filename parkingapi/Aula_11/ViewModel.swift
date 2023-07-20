//
//  ViewModel.swift
//  Aula_11
//
//  Created by Student08 on 03/07/23.
//

import SwiftUI

class ViewModel: ObservableObject {
    @Published var arrayEstacionamentos: [Estacionamento] = []
    
    func fetch() {
        guard let url = URL(string: "http://127.0.0.1:1880/vgetdesafio11") else {
            return
        }
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let parsed = try JSONDecoder().decode([Estacionamento].self, from: data)
                DispatchQueue.main.async{
                    self?.arrayEstacionamentos = parsed
                }
            }catch{
                print(error)
            }
        }
        task.resume()
    }
}
