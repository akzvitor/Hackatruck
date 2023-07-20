//
//  Model.swift
//  Aula_11
//
//  Created by Student08 on 03/07/23.
//

import Foundation

struct Estacionamento: Decodable, Hashable {
    var nomeEstacionamento: String?
    var endereco: String?
    var vagas: Int?
    var carros: [Carro]?
}

struct Carro: Decodable, Hashable {
    var modelo: String?
    var ano: String?
    var cor: String?
    var preco: Int?
}
