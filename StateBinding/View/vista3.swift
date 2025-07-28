//
//  vista3.swift
//  StateBinding
//
//  Created by Paul F on 17/03/25.
//

import SwiftUI

//Paso 2.6
struct vista3: View {
    @Binding var w : String
    var body: some View{
        Button(action:{
            w = "Nuevo titulo desde vista 3"
        }){
            Text("Cambiar titulo")
        }
    }
}

#Preview {
    vista3(w: .constant("Texto de prueba"))
}
