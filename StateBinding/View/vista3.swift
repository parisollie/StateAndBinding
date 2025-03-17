//
//  vista3.swift
//  StateBinding
//
//  Created by Paul F on 17/03/25.
//

import SwiftUI

//Paso 1.16
struct vista3: View {
    @Binding var x : String
    var body: some View{
        Button(action:{
            x = "Nuevo titulo desde vista 3"
        }){
            Text("Cambiar titulo")
        }
    }
}

#Preview {
    vista3(x: .constant("Texto de prueba"))
}
