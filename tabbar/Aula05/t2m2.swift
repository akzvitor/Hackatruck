//
//  t2m2.swift
//  Aula05
//
//  Created by Student08 on 23/06/23.
//

import SwiftUI

struct t2m2: View {
    @Binding var name: String
    var body: some View {
        Text("Volte, \(name)!")
    }
}

struct t2m2_Previews: PreviewProvider {
    static var previews: some View {
        t2m2(name: .constant(""))
    }
}
