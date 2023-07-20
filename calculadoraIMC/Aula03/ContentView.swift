//
//  Aula03App.swift
//  Aula03
//
//  Created by Hackatruck on 2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name: String = ""
    @State private var showingAlert = false
    
    var body: some View {
        ZStack{ // Serve pra indicar a ordem das camadas
            Image("bg")
              .resizable() //Ajusta a imagem ao tamanho da tela
              .aspectRatio(1 / 1, contentMode: .fill) // Manter proporção ignorando sobras
              .edgesIgnoringSafeArea(.all) // Ignorar cantos de segurança safa area
              .saturation(0.5)
              .blur(radius: 3)
              .opacity(0.2)
            
            VStack{
                Text("Bem vindo,  \(name)")
                    .font(.largeTitle)
                
                TextField("Digite seu nome aqui", text: $name)
                    .padding()
                    .multilineTextAlignment(.center) // Centralizar
                    
                Spacer()
                
                VStack{
                    Image("logo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .shadow(radius: 10)
                    
                    Image("truck")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .shadow(radius: 10)
                }
                 
                Spacer()
                
                Button("Entrar") {
                           showingAlert = true
                       }
                       .alert(isPresented: $showingAlert) {
                           Alert(title: Text("ALERTA !"), message: Text("Você irá iniciar o desafio da aula agora"), dismissButton: .default(Text("Vamos lá!")))
                       }

            } //:VStack
            
        } //:ZStack
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
