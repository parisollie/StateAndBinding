//
//  ContentView.swift
//  StateBinding
//
//  Created by Paul Jaime Felix Flores on 18/04/23.
//

import SwiftUI

struct ContentView: View {
    /*
     V-89,Paso 1.6
     
     -Binding:Es un enlace bidireccional,es la conexión entre una propiedad que almacena datos(variable) y una vista que cambia el valor (Textfield).

     V-87, Paso 1.0
     Con el State ponemos el nombre de la variable.
     
     -State: administra y define el estado de una
     variable,es decir el estado la capacidad de cambiar
     el valor de ser escrita por una función y por lo que es el body de nuestra aplicación.
     
     */
    //Paso 1.9, le ponemos el valor de título
    @State private var x = "Titulo"
    var x1 = 2
    
    //V-88,Paso 1.2 para el botón del corazón.
    @State private var show = true
    
    //Para hacer la suma del corazón.
    @State private var numero = 0
    
    //Paso 2.1
    @State private var numeroMoneda = 123
    //Moneda para poder sumar
    @State private var numeroMoneda2 = "0"
        

    //Paso 1.1
    func suma() ->Int{
        // Cuando la variable viene de fuera,etonces se usa el State.
        x = "Cambiando su valor"
        // Si se crea dentro de la función no se usa el State.
        var x2 = 2
        // Aquí le asignamos el valor de 4.
        x2 = 4
        return x2
    }
    
    var body: some View {
        VStack{
            //Paso 1.7
            Text(x).font(.largeTitle)
            
            Spacer()
            
            HStack{
                Button(action:{
                    /*
                    Paso 1.3,el toggle cambia el valor de true a falso cada vez que hacemos click en el corazón.
                    */
                    show.toggle()
                    //Si es verdad,le quitamos o le ponemos el botón me gusta.
                    if show {
                        numero -= 1
                    }else{
                        numero += 1
                    }
                }){
                    //Paso 1.4, para colorear el corazón.
                    if show {
                        Image(systemName: "heart").foregroundColor(.red).font(.largeTitle)
                    }else{
                        //Si le da like ,aparece el corazón lleno.
                        Image(systemName: "heart.fill").foregroundColor(.red).font(.largeTitle)
                    }
                    //Paso 1.5 Hacemos un casting, es para poner el número 1.
                    Text(String(numero)).bold()
                }
                
                Spacer()
                
                //Paso 2.0,Botón de donaciones.
                Button(action:{
                    // (!), le decimos que ahì viene algo.
                    numeroMoneda = numeroMoneda + Int(numeroMoneda2)!
                }){
                    Image(systemName: "dollarsign.circle.fill").foregroundColor(.yellow).font(.largeTitle)
                }
                Spacer()
                //V-91,Paso 3.0 para hacer la suma
                Text(String(numeroMoneda)).bold()
            }//:H-STACK
            
            Spacer()
            
            //Paso 1.8 ,con el signo($)sirve para ocupar el state como binding
            TextField("Donación", text: $numeroMoneda2)
                //Paso 2.2,cambiamos el teclado para escribir números.
                .keyboardType(.numberPad)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                )
                .padding(.bottom, 9)
            
            Spacer()
            
            //Paso 1.10,le aplicamos el binding ,para cambiar el valor
            TextField("Titulo", text: $x)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                // Fondo suave
                .background(Color(.yellow))
                // Esquinas redondeadas
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray.opacity(0.5), lineWidth: 1) // Borde sutil
                )
                .padding(.bottom, 9)
            
            Spacer()
            
            //Paso 2.5,Mandamos a llamar a nuestras vistas con sus bindings
            vista2(z: $x)
            vista3(w: $x)
        }
        .padding(.all)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


