//
//  vista2.swift
//  StateBinding
//
//  Created by Paul F on 17/03/25.
//

import SwiftUI

//Paso 1.13,creamos una nueva vista
struct vista2: View {
    //Paso 1.14
    @Binding var x : String
    var body: some View{
        Text(x).font(.largeTitle).foregroundColor(.red)
    }
}

#Preview {
    vista2(x: .constant("Texto de prueba"))
}
