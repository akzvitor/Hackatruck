//
//  HomeView.swift
//  Aula05
//
//  Created by Student08 on 23/06/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        List{
            ForEach((1...50), id:\.self) {
                    Text("Item \($0)")
                }
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
