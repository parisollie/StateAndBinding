//
//  vista2.swift
//  StateBinding
//
//  Created by Paul F on 17/03/25.
//

import SwiftUI

//V-90,Paso 2.3,creamos una nueva vista.
struct vista2: View {
    //Paso 2.4 el tipo de dato es string
    @Binding var z : String
    
    var body: some View{
        Text(z)
            .font(.largeTitle)
            .foregroundColor(.red)
    }
}

#Preview {
    vista2(z: .constant("Texto de prueba"))
}
