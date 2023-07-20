//
//  c2MainView.swift
//  Aula05
//
//  Created by Student08 on 23/06/23.
//

import SwiftUI

struct c2MainView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: t1m1()){
                    Text("Modo 1")
                }
                NavigationLink(destination: t1m2()){
                    Text("Modo 2")
                }
                NavigationLink(destination: t1m3()){
                    Text("Modo 3")
                }
            }
        }
    }
    
}

struct c2MainView_Previews: PreviewProvider {
    static var previews: some View {
        c2MainView()
    }
}
