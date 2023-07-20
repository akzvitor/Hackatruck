//
//  ImageView.swift
//  Aula05
//
//  Created by Student08 on 23/06/23.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        ScrollView {
            VStack{
                Image(systemName: "hare.fill")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .frame(width: 250.0, height: 250.0)
                Image(systemName: "tortoise.fill")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .frame(width: 250.0, height: 250.0)
                Image(systemName: "pawprint.fill")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .frame(width: 250.0, height: 250.0)
                Image(systemName: "ant.fill")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .frame(width: 250.0, height: 250.0)
                Image(systemName: "ladybug.fill")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .frame(width: 250.0, height: 250.0)
            }
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
