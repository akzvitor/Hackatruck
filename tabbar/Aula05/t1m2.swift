//
//  t1m2.swift
//  Aula05
//
//  Created by Student08 on 23/06/23.
//

import SwiftUI
struct t1m2: View {
    @State private var name = ""
    var body: some View {
            NavigationStack{
                TextField("", text: $name)
                Text("Estamos percorrendo um caminho, \(name)")
                NavigationLink(destination: t2m2(name: $name)){
                    Text("Acessar tela")
                }
        }
    }
}

struct t1m2_Previews: PreviewProvider {
    static var previews: some View {
        t1m2()
    }
}
