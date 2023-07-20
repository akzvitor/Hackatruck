//
//  ContentView.swift
//  Aula05
//
//  Created by Student08 on 23/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomeView()
                .badge(2)
                .tabItem {
                    Label("Home", systemImage: "person.line.dotted.person.fill")
                }
            SearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            ImageView()
                .tabItem {
                    Label("Photos", systemImage: "photo")
                }
            MessagesView()
                .badge(1)
                .tabItem {
                    Label("Messages", systemImage: "message.fill")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.circle.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
