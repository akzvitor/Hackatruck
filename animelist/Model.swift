//
//  Model.swift
//  Auloa_09
//
//  Created by Student08 on 29/06/23.
//

import Foundation

struct AnimeCharacter: Decodable, Hashable {
    var name: String?
    var name_kanji: String?
    var images: Img?
    var about: String?
}

struct Img: Decodable, Hashable {
    var jpg: Iurl?
}

struct Iurl: Decodable, Hashable {
    var image_url: String?
}

struct Teste : Decodable, Hashable{
    var data : [AnimeCharacter]?
}
