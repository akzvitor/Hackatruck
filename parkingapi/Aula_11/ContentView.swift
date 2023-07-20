//
//  ContentView.swift
//  Aula_11
//
//  Created by Student08 on 03/07/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack{
            ZStack{
                VStack {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                    Text("Lista de Estacionamentos:")
                        .font(.title)
                    ScrollView(){
                        ForEach(viewModel.arrayEstacionamentos, id: \.self) { estacionamento in
                            VStack{
                                Text(estacionamento.nomeEstacionamento!)
                                    .foregroundColor(.black)
                                    .font(.title2)
                                Text("Endereço: \(estacionamento.endereco!)")
                                    .foregroundColor(.black)
                                Text("\(estacionamento.vagas!) vagas")
                                    .foregroundColor(.black)
                                Text("Veículos estacionados:")
                                ForEach(estacionamento.carros!, id: \.self) { c in
                                    NavigationLink(destination: Carro1(c: c)){
                                        Text(c.modelo!)
                                    }
                                    .tint(.black)
                                }
                            }
                        }
                    }
                }
            }
        }
        .onAppear(){
            viewModel.fetch()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
