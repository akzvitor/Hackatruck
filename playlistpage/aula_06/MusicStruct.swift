//
//  MusicStruct.swift
//  aula_06
//
//  Created by Student08 on 27/06/23.
//

import SwiftUI

struct MusicStruct: View {
    struct Music: Identifiable{
        var id: Int
        var name: String
        var artist: String
        var img: String
    }
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}
