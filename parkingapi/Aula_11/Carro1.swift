//
//  Carro1.swift
//  Aula_11
//
//  Created by Student08 on 03/07/23.
//

import SwiftUI

struct Carro1: View {
    var c : Carro
    var body: some View {
        VStack{
            Text(c.modelo!)
            Text(c.ano!)
            Text(c.cor!)
            Text("\(c.preco!),00")
        }
    }
}
