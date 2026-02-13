//
//  vistaJuegoGato.swift
//  pruebaHolaMundo
//
//  Created by alumno on 2/11/26.
//

import SwiftUI

struct VistaJuegoGato: View {
    var body: some View {
            
            Text("Juego del gato ₍^. .^₎⟆")
                .bold(true)
            
            HStack {
                botonTicTac()
                botonTicTac()
                botonTicTac()
            }
            HStack {
                botonTicTac()
                botonTicTac()
                botonTicTac()
            }
            HStack {
                botonTicTac()
                botonTicTac()
                botonTicTac()
            }
            
        }
        
    }

#Preview {
    VistaJuegoGato()
}
