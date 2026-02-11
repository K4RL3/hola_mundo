//
//  botonTicTac.swift
//  pruebaHolaMundo
//
//  Created by alumno on 2/11/26.
//

import SwiftUI

struct botonTicTac: View {
    @State var opcionAMostrar = 0
    
    let opciones = ["-","X","0"]
    
    var body: some View {
        VStack {
            if (opcionAMostrar == 0){
                Text("-")
                    .padding(7)
                    .background(Color.yellow)
                    .cornerRadius(5)
            }
            else if (opcionAMostrar == 1){
                Text("X")
                    .padding(7)
                    .background(Color.red)
                    .cornerRadius(5)
            }
            else if (opcionAMostrar == 2){
                Text("O")
                    .padding(7)
                    .background(Color.blue)
                    .cornerRadius(5)
            }
        }
        .onTapGesture {
            opcionAMostrar = opcionAMostrar + 1
            opcionAMostrar = opcionAMostrar % 3
        }
    }
}

#Preview {
    botonTicTac()
}

